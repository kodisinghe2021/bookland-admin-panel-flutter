import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class GradeModel {
  double gradeId;
  String gradeName;
  GradeModel({
    required this.gradeId,
    required this.gradeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gradeId': gradeId,
      'gradeName': gradeName,
    };
  }

  factory GradeModel.fromMap(Map<String, dynamic> map) {
    return GradeModel(
      gradeId: map['gradeId'] as double,
      gradeName: map['gradeName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GradeModel.fromJson(String source) =>
      GradeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
