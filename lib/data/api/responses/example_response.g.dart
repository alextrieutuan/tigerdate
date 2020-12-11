// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleResponse _$ExampleResponseFromJson(Map<String, dynamic> json) {
  return ExampleResponse(
    data: json['data'] == null
        ? null
        : ExampleModel.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExampleResponseToJson(ExampleResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
