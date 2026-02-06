import 'package:flutter/material.dart';
import 'package:toku_app/components/items.dart';
import 'package:toku_app/models/items.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemsModel>? itemo = const [
    PhrasesModel(
      jpText: "Kimasu ka",
      enText: "Are you coming",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    PhrasesModel(
      jpText: "Kōdoku suru koto o wasurenaku kuddasai",
      enText: "Don't forget to subscribe",
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    PhrasesModel(
      jpText: "Go kibun wa ikagadesu ka",
      enText: "How are you feeling",
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    PhrasesModel(
      jpText: "Watashi wa anime ga daisukidesu",
      enText: "I love anime",
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    PhrasesModel(
      jpText: "Watashi wa Puroguramingu ga daisukidesu",
      enText: "I love programming",
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    PhrasesModel(
      jpText: "Puroguramingu wa kantandesu",
      enText: "Programming is easy",
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
    PhrasesModel(
      jpText: "Namae wa nandesu ka",
      enText: "What is your name",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    PhrasesModel(
      jpText: "Doko ni iku no",
      enText: "Where are you going",
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    PhrasesModel(
      jpText: "Hai,watashi wa kite imasu",
      enText: "Yes im coming",
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ItemsPage(
      item: itemo!,
      backgroundColor: Color(0xff2e8db2),
      pageName: "Phrases",
    );
  }
}
