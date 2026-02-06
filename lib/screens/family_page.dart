import 'package:flutter/material.dart';
import 'package:toku_app/components/items.dart';
import 'package:toku_app/models/items.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<ItemsModel> member = const [
    FamilyMember(
      image: "assets/images/family_members/family_father.png",
      enText: "Father",
      jpText: 'Chichioya',
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_mother.png",
      enText: 'Mother',
      jpText: "Hahaoya",
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_son.png",
      enText: 'Son',
      jpText: "Musuko",
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_daughter.png",
      enText: 'Daughter',
      jpText: "Musume",
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_grandfather.png",
      enText: 'Grand Father',
      jpText: "Ojisan",
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_grandmother.png",
      enText: 'Grand Mother',
      jpText: "Sobo",
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_older_brother.png",
      enText: "Older Brothe",
      jpText: 'Nisan',
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_older_sister.png",
      enText: 'Older Sister',
      jpText: "Ane",
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_younger_brother.png",
      enText: 'Younger Brother',
      jpText: "Otōto",
      sound: "sounds/family_members/father.wav",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_younger_sister.png",
      enText: 'Younger Sister',
      jpText: "Imōto",
      sound: "sounds/family_members/father.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ItemsPage(
      item: member,
      backgroundColor: Color(0xff416c20),
      pageName: "Family Members",
    );
  }
}
