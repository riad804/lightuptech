

import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../constants/environments.dart';
import 'connectivity_service.dart';

class ConnectService extends GetConnect {
  final GetStorage storage;

  ConnectService(this.storage);

  @override
  void onInit() {
    httpClient.baseUrl = Environments.appBaseUrl;
    super.onInit();
    _setupInterceptors();
  }

  void _setupInterceptors() {
    // Request Interceptor
    httpClient.addRequestModifier<void>((request) {
      log("➡️ REQUEST: ${request.method} ${request.url}");
      log("Headers: ${request.headers}");
      log("Body: ${request.bodyBytes.toString()}");

      // Add token if necessary
      // final token = Get.find<AuthService>().token;
      // if (token != null) request.headers['Authorization'] = "Bearer $token";

      if (!Get.find<ConnectivityService>().isOnline.value) {
        throw "no internet connection";
      }

      return request;
    });

    // Response Interceptor
    httpClient.addResponseModifier((request, response) {
      log("⬅️ RESPONSE: ${response.statusCode} ${request.url}");
      log("Body: ${response.body}");
      return response;
    });

    // Error Interceptor
    httpClient.addResponseModifier((request, response) {
      if (!response.isOk) {
        log("❗ ERROR: (${response.statusCode}) ${response.statusText}");
      }
      return response;
    });
  }
}