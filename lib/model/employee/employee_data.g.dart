// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      id: json['id'] as int?,
      position: json['position'] as String?,
      salary: json['salary'] as int?,
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'id': instance.id,
      'position': instance.position,
      'salary': instance.salary,
    };
