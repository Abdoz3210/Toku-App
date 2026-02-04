# Running this app on Linux with Flutter Snap

The Flutter Snap has two known issues when building for Linux:

1. **Missing GStreamer/GTK** – audioplayers_linux needs system dev packages.
2. **Missing linker** – Snap’s LLVM dir has no `ld`/`ld.lld`, so `dart_build` fails.

## Fix 1: Install required system packages (for CMake “required package was not found”)

Run once:

```bash
sudo apt-get update
sudo apt-get install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgtk-3-dev libglib2.0-dev
```

## Fix 2: Linker “Failed to find any of [ld.lld, ld]”

The Snap only looks in `/snap/flutter/149/usr/lib/llvm-10/bin`, which has no linker. Two options:

### Option A: Bind-mount workaround (quick, can break on Snap updates)

1. Install the LLVM linker:
   ```bash
   sudo apt-get install -y lld
   ```

2. Create a directory with links to the system linker:
   ```bash
   mkdir -p ~/flutter-llvm-bin
   ln -sf /usr/bin/ld ~/flutter-llvm-bin/ld
   ln -sf /usr/bin/ld.lld ~/flutter-llvm-bin/ld.lld
   ```

3. Bind-mount it over the Snap’s LLVM bin (replace `149` with your revision: `ls /snap/flutter`):
   ```bash
   sudo mount --bind ~/flutter-llvm-bin /snap/flutter/149/usr/lib/llvm-10/bin
   ```

4. Build/run:
   ```bash
   flutter clean && flutter run -d linux
   ```

To undo the mount later:
```bash
sudo umount /snap/flutter/149/usr/lib/llvm-10/bin
```

### Option B: Use a manual Flutter install (recommended)

1. Remove Snap Flutter:
   ```bash
   sudo snap remove flutter
   ```

2. Install Flutter manually: https://docs.flutter.dev/get-started/install/linux  
   (e.g. clone into `~/flutter`, add `~/flutter/bin` to `PATH`).

3. In your project:
   ```bash
   flutter clean && flutter run -d linux
   ```

Manual install avoids Snap’s sandbox and missing LLVM tools, so Linux desktop builds are more reliable.

---

## Fix 3: “linker command failed” / undefined reference to `…@GLIBC_2.34` or `…@GLIBC_2.38`

After fixing the linker (bind mount) and installing GStreamer, the link step can still fail with many “undefined reference” errors (e.g. `dlopen@GLIBC_2.34`, `__isoc23_strtol@GLIBC_2.38`, `g_pattern_spec_match_string`). That happens because:

- The **Snap** provides an older toolchain and an older glibc (via `-B/snap/flutter/current/...`).
- Your **system** GStreamer/GTK/libs (from `libgstreamer1.0-dev`, etc.) are built against a **newer** glibc (2.34, 2.38).
- The linker then tries to link the app (using the Snap’s old runtime) against those system libs and cannot resolve the newer glibc symbols.

**There is no good workaround with the Snap.** The only reliable fix is to **stop using the Flutter Snap** and use a **manual Flutter install** (Option B under Fix 2). Then the whole build uses your system toolchain and system glibc, and Linux desktop builds (including `audioplayers`) work without these linker errors.
