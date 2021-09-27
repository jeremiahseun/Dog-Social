import 'package:dio/dio.dart';

import 'api.dart';
import 'api_response.dart';
import 'api_utils.dart';

class HttpApiService implements Api {
  final dio = Dio();

  @override
  Future<ApiResponse?> delete(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse?> get(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse?> patch(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse?> post(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers}) async {
    try {
      final res =
          await dio.post(path, data: data, options: Options(headers: headers));

      return ApiUtils.toApiResponse(res);
    } on DioError catch (e) {
      print(e);
      return ApiUtils.toApiResponse(e.response!);
    }
  }

  @override
  Future<ApiResponse?> put(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers}) {
    throw UnimplementedError();
  }
}
