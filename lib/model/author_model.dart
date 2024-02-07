import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AuthorModel {
  double authorId;
  String authorName;
  AuthorModel({
    required this.authorId,
    required this.authorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorId': authorId,
      'authorName': authorName,
    };
  }

  factory AuthorModel.fromMap(Map<String, dynamic> map) {
    return AuthorModel(
      authorId: map['authorId'] as double,
      authorName: map['authorName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthorModel.fromJson(String source) =>
      AuthorModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
