import 'package:flutter/material.dart';
import 'package:toku_app/components/items.dart';
// import 'package:toku_app/components/numberss_items.dart';
import 'package:toku_app/models/items.dart';
// import 'package:toku_app/models/numbers.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<ItemsModel> number = const [
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      enText: 'One',
      jpText: 'Ichi',
    ),
    Number(
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpText: 'Ni',
      enText: 'Two',
    ),
    Number(
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpText: 'San',
      enText: 'Three',
    ),
    Number(
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpText: 'Shi',
      enText: 'Four',
    ),
    Number(
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jpText: 'Go',
      enText: 'Five',
    ),
    Number(
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpText: 'Roku',
      enText: 'Six',
    ),
    Number(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpText: 'Sebun',
      enText: 'Seven',
    ),
    Number(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpText: 'hachi',
      enText: 'eight',
    ),
    Number(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpText: 'Kyū',
      enText: 'Nine',
    ),
    Number(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jpText: 'jū',
      enText: 'Ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ItemsPage(
      item: number,
      backgroundColor: Color(0xffEC8724),
      pageName: "Numbers",
    );
  }

  // List<Widget> getList(List<Number> number) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < number.length; i++) {
  //     itemsList.add(NumberCategory(number: number[i]));
  //   }
  //   return itemsList;
  // }
}
