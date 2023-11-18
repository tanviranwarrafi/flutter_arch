import 'package:flutter_arch/enum/enums.dart';
import 'package:flutter_arch/models/dummy/api_response.dart';

abstract class ApiInterceptor {
  Future<ApiResponse> getRequest({required String endPoint, required Header header});
  Future<ApiResponse> postRequest({required String endPoint, required Header header, body});
  Future<ApiResponse> deleteRequest({required String endPoint, required Header header, body});
  Future<ApiResponse> putRequest({required String endPoint, required Header header, body});
}
