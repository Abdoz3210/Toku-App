import 'package:flutter/material.dart';
import 'package:toku_app/components/categories.dart';
// import 'package:toku_app/models/family.dart';
import 'package:toku_app/models/items.dart';
// import 'package:toku_app/models/numbers.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({
    super.key,
    required this.item,
    required this.backgroundColor,
  });
  final List<ItemsModel>? item;


  final Color? backgroundColor;
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
        itemCount: item!.length,
        itemBuilder: (context, index) {
          return Categories(
            item: item![index],
            backgroundColor: backgroundColor,
          );
        },

        // FamilyCategory(member: member[0]),
      ),
    );
  }
}
