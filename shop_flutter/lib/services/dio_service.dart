import "package:dio/dio.dart";
class DioService {
  final Dio dio = Dio();
  Future<List<dynamic>> getProducts() async {
    final response = await dio.get(
      "https://serpapi.com/search.json?engine=google_shopping&api_key=9aae72c1acf73b74b1ca4e926cd662a5640e85d203aa62fc1425e0a142189a71"
    );
    return response.data;
  }
}