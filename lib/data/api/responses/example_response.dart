import 'package:json_annotation/json_annotation.dart';
import 'package:tigerdate/data/models/models.dart';

part 'example_response.g.dart';

@JsonSerializable()
class ExampleResponse {
  ExampleModel data;

  ExampleResponse({this.data});

  factory ExampleResponse.fromJson(Map<String, dynamic> json) =>
      _$ExampleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ExampleResponseToJson(this);
}
