import 'package:flutter/material.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

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
      body: Container(
        height: 65,
        color: Color(0xff416c20),
        child: Row(
          children: [
            Container(
              height: 65,
              width: 65,
              color: Color(0xfffdf0d8),
              child: Image.asset(
                "assets/images/family_members/family_father.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chichioya",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Text(
                    "Father",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            Spacer(flex: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_arrow_rounded, color: Colors.white),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
