import 'package:flutter/material.dart';
import 'package:toku_app/components/family_items.dart';

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
      body: FamilyCategory(),
    );
  }
}
