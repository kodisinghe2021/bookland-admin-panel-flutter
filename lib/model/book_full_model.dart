import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BookFullModel {
  double bookId;
  String bookCode;
  String bookName;
  int pageCount;
  String imageUrl;
  double sellingPrice;
  double buyingPrice;
  int likesCount;
  int disLikesCount;
  double ratingPercentage;
  double availableQuantity;
  String author;
  String subject;
  String publisher;
  String grade;
  String medium;
  String units;
  BookFullModel({
    required this.bookId,
    required this.bookCode,
    required this.bookName,
    required this.pageCount,
    required this.imageUrl,
    required this.sellingPrice,
    required this.buyingPrice,
    required this.likesCount,
    required this.disLikesCount,
    required this.ratingPercentage,
    required this.availableQuantity,
    required this.author,
    required this.subject,
    required this.publisher,
    required this.grade,
    required this.medium,
    required this.units,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookId': bookId,
      'bookCode': bookCode,
      'bookName': bookName,
      'pageCount': pageCount,
      'imageUrl': imageUrl,
      'sellingPrice': sellingPrice,
      'buyingPrice': buyingPrice,
      'likesCount': likesCount,
      'disLikesCount': disLikesCount,
      'ratingPercentage': ratingPercentage,
      'availableQuantity': availableQuantity,
      'author': author,
      'subject': subject,
      'publisher': publisher,
      'grade': grade,
      'medium': medium,
      'units': units,
    };
  }

  factory BookFullModel.fromMap(Map<String, dynamic> map) {
    return BookFullModel(
      bookId: map['bookId'] as double,
      bookCode: map['bookCode'] as String,
      bookName: map['bookName'] as String,
      pageCount: map['pageCount'] as int,
      imageUrl: map['imageUrl'] as String,
      sellingPrice: map['sellingPrice'] as double,
      buyingPrice: map['buyingPrice'] as double,
      likesCount: map['likesCount'] as int,
      disLikesCount: map['disLikesCount'] as int,
      ratingPercentage: map['ratingPercentage'] as double,
      availableQuantity: map['availableQuantity'] as double,
      author: map['author'] as String,
      subject: map['subject'] as String,
      publisher: map['publisher'] as String,
      grade: map['grade'] as String,
      medium: map['medium'] as String,
      units: map['units'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BookFullModel.fromJson(String source) =>
      BookFullModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
