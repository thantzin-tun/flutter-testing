import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable()

class User {

  final String? name;
  final String? phone;
  final String? address;
  final String? email;

  User({this.name, this.phone, this.address, this.email});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);    

}