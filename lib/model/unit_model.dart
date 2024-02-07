import 'dart:convert';

class UnitModel {
  double unitId;
  String unitName;
  UnitModel({
    required this.unitId,
    required this.unitName,
  });
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unitId': unitId,
      'unitName': unitName,
    };
  }

  factory UnitModel.fromMap(Map<String, dynamic> map) {
    return UnitModel(
      unitId: map['unitId'] as double,
      unitName: map['unitName'] as String,
    );
  }
  String toJson() => json.encode(toMap());
  factory UnitModel.fromJson(String source) =>
      UnitModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
