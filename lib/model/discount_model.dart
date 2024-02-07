import 'dart:convert';

import 'package:date_time_format/date_time_format.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class DiscountModel {
  double discountId;
  double discountPercentage;
  String activatingDate;
  String expireDate;
  DiscountModel({
    required this.discountId,
    required this.discountPercentage,
    required this.activatingDate,
    required this.expireDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discountId': discountId,
      'discountPercentage': discountPercentage,
      'activatingDate': activatingDate,
      'expireDate': expireDate,
    };
  }

  factory DiscountModel.fromMap(Map<String, dynamic> map) {
    return DiscountModel(
      discountId: map['discountId'] == null ? 0.0 : map['discountId'] as double,
      discountPercentage: map['discountPercentage'] == null
          ? 0.0
          : map['discountPercentage'] as double,
      activatingDate: map['activatingDate'].toString(),
      expireDate: map['expireDate'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory DiscountModel.fromJson(String source) =>
      DiscountModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
