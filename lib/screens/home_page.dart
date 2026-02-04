import 'package:flutter/material.dart';
import 'package:toku_app/components/category_items.dart';
import 'package:toku_app/screens/family_page.dart';
import 'package:toku_app/screens/number_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF1D7),
      appBar: AppBar(
        title: Text('Toku App', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff412A21),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            colors: Color(0xffEC8724),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contxet) {
                    return NumberPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Family Members',
            colors: Color(0xff477526),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyPage();
                  },
                ),
              );
            },
          ),
          Category(text: 'Colors', colors: Color(0xff743699)),
          Category(text: 'Phrases', colors: Color(0xff3998BD)),
        ],
      ),
    );
  }
}
