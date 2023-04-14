import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'product_data.g.dart';

@JsonSerializable()
class Product {
    final int id;
    final String title;
    final double price;
    final String description;
    final String category;
    final String image;
    Rating rating;

    Product({required this.id,required this.title,required this.price,required this.description,required this.category,required this.image,required this.rating});

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

    Map<String, dynamic> toJson() => _$ProductToJson(this);

}

@JsonSerializable()

class Rating {
  final double rate;
  final int count;

  Rating({required this.rate,required this.count});


  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);

    Map<String, dynamic> toJson() => _$RatingToJson(this);


}



//flutter pub run build_runner build