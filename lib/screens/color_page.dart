import 'package:flutter/material.dart';
import 'package:toku_app/components/items.dart';
import 'package:toku_app/models/items.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  final List<ItemsModel> color = const [
    ColorsModel(
      image: "assets/images/colors/color_black.png",
      enText: "Black",
      jpText: 'Burakku',
      sound: "sounds/colors/black.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_brown.png",
      enText: "Brown",
      jpText: 'Chario',
      sound: "sounds/colors/brown.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_dusty_yellow.png",
      enText: "Dusty Yellow",
      jpText: 'Hokori ppoi kiiro',
      sound: "sounds/colors/dusty yellow.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_gray.png",
      enText: "Gray",
      jpText: 'Gure',
      sound: "sounds/colors/gray.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_green.png",
      enText: "Green",
      jpText: 'Midori',
      sound: "sounds/colors/green.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_red.png",
      enText: "Red",
      jpText: 'Aka',
      sound: "sounds/colors/red.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_white.png",
      enText: "White",
      jpText: 'Shiroi',
      sound: "sounds/colors/white.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/yellow.png",
      enText: "Yellow",
      jpText: 'Kiiro',
      sound: "sounds/colors/yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ItemsPage(
      item: color,
      backgroundColor: Color(0xff75389a),
      pageName: "Colors",
    );
  }
}
