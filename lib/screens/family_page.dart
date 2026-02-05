import 'package:flutter/material.dart';
import 'package:toku_app/components/family_items.dart';
import 'package:toku_app/models/family.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<FamilyMember> member = const [
    FamilyMember(
      image: "assets/images/family_members/family_father.png",
      enText: "Father",
      jpText: 'Chichioya',
    ),
    FamilyMember(
      image: "assets/images/family_members/family_mother.png",
      enText: 'Mother',
      jpText: "Hahaoya",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_son.png",
      enText: 'Son',
      jpText: "Musuko",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_daughter.png",
      enText: 'Daughter',
      jpText: "Musume",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_grandfather.png",
      enText: 'Grand Father',
      jpText: "Ojisan",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_grandmother.png",
      enText: 'Grand Mother',
      jpText: "Sobo",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_older_brother.png",
      enText: "Older Brothe",
      jpText: 'Nisan',
    ),
    FamilyMember(
      image: "assets/images/family_members/family_older_sister.png",
      enText: 'Older Sister',
      jpText: "Ane",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_younger_brother.png",
      enText: 'Younger Brother',
      jpText: "Otōto",
    ),
    FamilyMember(
      image: "assets/images/family_members/family_younger_sister.png",
      enText: 'Younger Sister',
      jpText: "Imōto",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff40291e),
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: ListView.builder(
        itemCount: member.length,
        itemBuilder: (context, index) {
          return FamilyCategory(member: member[index]);
        },

        // FamilyCategory(member: member[0]),
      ),
    );
  }
}
