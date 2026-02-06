import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:toku_app/models/family.dart';
import 'package:toku_app/models/items.dart';
// import 'package:toku_app/models/numbers.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.item,
    required this.backgroundColor,
  });
  final ItemsModel item;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    // if (item!.image == null) {
    //   return Container(
    //     height: 100,
    //     color: backgroundColor,
    //     child: Row(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.only(left: 13),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 item!.jpText!,
    //                 style: TextStyle(color: Colors.white, fontSize: 17),
    //               ),
    //               Text(
    //                 item!.enText!,
    //                 style: TextStyle(color: Colors.white, fontSize: 15),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Spacer(flex: 10),
    //         IconButton(
    //           onPressed: () {
    //             final player = AudioPlayer();
    //             player.setSourceAsset(item!.sound!);
    //           },
    //           icon: Icon(Icons.play_arrow_rounded, color: Colors.white),
    //         ),
    //         Spacer(flex: 1),
    //       ],
    //     ),
    //   );
    // }

    return Column(
      children: [
        Container(
          height: 100,
          color: backgroundColor,
          child: Row(
            children: [
              if (item.image != null)
                Container(
                  height: 100,
                  width: 100,
                  color: Color(0xfffdf0d8),
                  child: Image.asset(item.image!),
                ),

              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: SizedBox(
                  height: 100,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.jpText!,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        item.enText!,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(flex: 10),
              IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(item.sound!));
                  // setSourceAsset(item!.sound!);
                },
                icon: Icon(Icons.play_arrow_rounded, color: Colors.white),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
        Divider(height: 0, thickness: .5),
      ],
    );
  }
}
