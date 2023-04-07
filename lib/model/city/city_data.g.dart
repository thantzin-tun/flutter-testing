
part of 'city_data.dart';

City _$CityFromJson(Map<String, dynamic> json) => City(
      city: json['city'] as String?,
      streets:
          (json['streets'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'city': instance.city,
      'streets': instance.streets,
    };
