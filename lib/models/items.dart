abstract class ItemsModel {
  final String? image;
  final String? enText;
  final String? jpText;
  final String? sound;
  const ItemsModel({this.image, this.enText, this.jpText , this.sound});
}

class FamilyMember extends ItemsModel {
  const FamilyMember({
    required super.jpText,
    required super.enText,
    required super.image,
    required super.sound
  });
}

class Number extends ItemsModel {
  const Number({
    required super.jpText,
    required super.enText,
    required super.image,
    required super.sound
  });
}

class ColorsModel extends ItemsModel {
  const ColorsModel({
    required super.jpText,
    required super.enText,
    required super.image,
    required super.sound,
  });
}



class PhrasesModel extends ItemsModel {
  const PhrasesModel({
    required super.jpText,
    required super.enText,
    required super.sound,
  });
}
