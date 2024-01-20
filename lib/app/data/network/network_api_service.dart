import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_getx_tutorial/app/data/app_exceptions.dart';
import 'package:flutter_getx_tutorial/app/data/network/base_api_service.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      debugPrint("Url: $url");
    }
    dynamic responseJson;

    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeoutException {
      throw RequestTimeoutException('');
    }

    return responseJson;
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      debugPrint("Url: $url");
    }

    dynamic responseJson;

    try {
      final response = await http
          .post(
            Uri.parse(url),

            // in case of raw data, use jsonEncode
            // in case of form-data, no need to use jsonEncode
            body: jsonEncode(data),
          )
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeoutException {
      throw RequestTimeoutException('');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw BadRequestException('');

      default:
        throw UnExpectedException('Error: ${response.statusCode}');
    }
  }
}
