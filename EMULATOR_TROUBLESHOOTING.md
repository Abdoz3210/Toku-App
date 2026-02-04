# Android Emulator Freeze / Crash – Fixes

If the emulator **freezes**, **crashes**, or you see **exit code -11** / **"pc_memory_init: above 4g"**, try these in order.

---

## Fix: "above 4g size" + exit code -11 (emulator crashes at startup)

This means the emulator is using more than 4GB RAM and is crashing (SIGSEGV). **Fix: set AVD RAM to 2048 MB.**

1. Open **Android Studio** → **Device Manager**.
2. Click **Edit** (pencil) on your AVD (e.g. **sdk gphone x86 64**).
3. Click **Show Advanced Settings**.
4. Set **RAM** to **2048** MB (not 4096 or higher).
5. Click **Finish**, then start the emulator again.

If the AVD doesn’t let you change RAM, create a **new** AVD and set RAM to **2048 MB** when creating it.

---

## 1. Use KVM (hardware acceleration) on Linux

Your system has `/dev/kvm`. Make sure your user can use it:

```bash
# Add yourself to the kvm group (then log out and back in, or reboot)
sudo usermod -aG kvm $USER
```

After that, the emulator will use KVM and be more stable.

---

## 2. Give the emulator more RAM

- Open **Android Studio** → **Device Manager** (or **Tools** → **Device Manager**).
- Click **Edit** (pencil) on your AVD (e.g. Pixel 5).
- In **Advanced Settings**, set **RAM** to **2048 MB** or **4096 MB** (don’t set it higher than half your PC RAM).
- Save and start the emulator again.

---

## 3. Try “Cold boot”

Sometimes the emulator is stuck from a previous run:

- In Device Manager, click the **▼** next to your AVD.
- Choose **Cold Boot Now** instead of the normal start.

---

## 4. Switch graphics mode

If it still freezes or crashes:

- Edit the AVD (Device Manager → Edit).
- In **Advanced Settings**, find **Graphics**.
- Try **Software – GLES 2.0** (slower but often more stable).
- Or try **Hardware – GLES 2.0** if you’re currently on **Automatic** or another option.

---

## 5. Use a lighter AVD

Heavy system images (e.g. latest API with Play Store) need more RAM and CPU:

- Create a new AVD: **Device Manager** → **Create Device**.
- Pick a smaller device (e.g. **Pixel 4a** or **Pixel 5**).
- Choose a **system image** without “Google Play” (e.g. “Google APIs” or “Google APIs (no Play Store)”) to reduce load.
- Use it for daily testing; only use the heavy AVD when you need Play Store.

---

## 6. Free resources before starting

- Close heavy apps (browsers with many tabs, other IDEs, games).
- Don’t run many emulators at once; one is enough for Flutter.

---

## 7. Update emulator and system image

- **Android Studio** → **Settings** → **Appearance & Behavior** → **System Settings** → **Android SDK**.
- Open **SDK Tools** and ensure **Android Emulator** and **Android Emulator Hypervisor Driver** are up to date.
- In **SDK Platform**, install/update a system image (e.g. latest “Google APIs” for your target API level).

---

## Quick checklist

| Step | Action |
|------|--------|
| 1 | `sudo usermod -aG kvm $USER` then log out/in (or reboot) |
| 2 | AVD → Edit → RAM 2048–4096 MB |
| 3 | Start with **Cold Boot Now** |
| 4 | If still bad: Graphics → **Software – GLES 2.0** |
| 5 | Use a lighter AVD (no Play Store image) for testing |

If it still freezes or crashes, say what you see (e.g. “black screen”, “app not responding”, “emulator process killed”) and we can narrow it down.
