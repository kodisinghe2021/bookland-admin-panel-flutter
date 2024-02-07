// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ResponseObject {
  ResponseObject({
    required this.code,
    required this.message,
    required this.data,
  });
  final int code;
  final String message;
  final List<dynamic> data;

  factory ResponseObject.fromMap(Map<String, dynamic> map) {
    return ResponseObject(
      code: map['code'] as int,
      message: map['message'] as String,
      data: map['data'] as List<dynamic>,
    );
  }

  factory ResponseObject.fromJson(String source) =>
      ResponseObject.fromMap(json.decode(source) as Map<String, dynamic>);
}
