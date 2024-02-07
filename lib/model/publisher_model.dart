import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PublisherModel {
  double publisherID;
  String publisherName;
  PublisherModel({
    required this.publisherID,
    required this.publisherName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publisherID': publisherID,
      'publisherName': publisherName,
    };
  }

  factory PublisherModel.fromMap(Map<String, dynamic> map) {
    return PublisherModel(
      publisherID: map['publisherID'] as double,
      publisherName: map['publisherName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PublisherModel.fromJson(String source) =>
      PublisherModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
