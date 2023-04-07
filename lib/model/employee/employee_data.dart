import "package:json_annotation/json_annotation.dart";

part  "employee_data.g.dart";

@JsonSerializable()

class Employee{
  final int? id;
  final String? position;
  final int? salary;

  Employee({this.id,this.position,this.salary});

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeToJson(this);
}