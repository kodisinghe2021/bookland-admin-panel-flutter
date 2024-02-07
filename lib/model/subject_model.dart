import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SubjectModel {
  double subjectId;
  String subjectName;
  SubjectModel({
    required this.subjectId,
    required this.subjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectId': subjectId,
      'subjectName': subjectName,
    };
  }

  factory SubjectModel.fromMap(Map<String, dynamic> map) {
    return SubjectModel(
      subjectId: map['subjectId'] as double,
      subjectName: map['subjectName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubjectModel.fromJson(String source) =>
      SubjectModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
