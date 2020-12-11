import 'package:tigerdate/data/api/dio_provider.dart';
import 'package:tigerdate/data/api/rest_client.dart';
import 'package:tigerdate/data/models/models.dart';

abstract class ExampleRepository {
  Future<ExampleModel> getExampleModel();
}

/// Using for unit testing
class MockExampleRepository extends ExampleRepository {
  @override
  Future<ExampleModel> getExampleModel() {
    return Future.value(ExampleModel(id: "1"));
  }
}

/// Remote api call
class RemoteExampleRepository extends ExampleRepository {
  final restClient = RestClient(DioProvider.instance());

  @override
  Future<ExampleModel> getExampleModel() async {
    final response = await restClient.getSomething();
    return response.data;
  }
}
