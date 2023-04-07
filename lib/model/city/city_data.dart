import "package:json_annotation/json_annotation.dart";
import 'dart:convert';
part  "city_data.g.dart";

@JsonSerializable()

class City {

    final String? city;
    final List<String>? streets;

    City({this.city,this.streets});

    factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

    Map<String, dynamic> toJson() => _$CityToJson(this);

}