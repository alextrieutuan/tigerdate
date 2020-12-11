import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:tigerdate/data/api/responses/api_responses.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://api.tigerdate.com/v1/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/something")
  Future<ExampleResponse> getSomething();
}
