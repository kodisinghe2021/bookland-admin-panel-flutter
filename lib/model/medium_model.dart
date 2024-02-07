import 'dart:convert';

class MediumsModel {
  double mediumId;
  String mediumType;
  MediumsModel({
    required this.mediumId,
    required this.mediumType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mediumId': mediumId,
      'mediumType': mediumType,
    };
  }

  factory MediumsModel.fromMap(Map<String, dynamic> map) {
    return MediumsModel(
      mediumId: map['mediumId'] as double,
      mediumType: map['mediumType'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MediumsModel.fromJson(String source) =>
      MediumsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
