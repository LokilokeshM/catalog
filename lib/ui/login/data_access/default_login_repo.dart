import 'dart:convert';
import 'dart:io';

import 'package:catalogue_management/ui/login/domain/error_response.dart';
import 'package:catalogue_management/ui/login/domain/login_repo.dart';
import 'package:catalogue_management/ui/login/domain/login_success.dart';
import 'package:freezed_result/freezed_result.dart';
import 'package:cm_network_implementation/entity_helper/login_body.dart';
import 'package:dio/dio.dart';
import '../infrastructure/raw_login_api.dart';

class DefaultLoginRepo extends LoginRepo {
  DefaultLoginRepo(this.api);
  final RawLoginApi api;
  @override
  Future<Result<LoginSuccess, ErrorResponse>> login(
      {required LoginBody body}) async {
    try {
      // var params = {
      //   "email": "admin@test.com",
      // };
      // Dio dio = Dio();
      // dio.options.headers["Content-Type"] = "application/json";
      // dio.options.headers["Access-Control-Allow-Origin"] =
      //     "*"; // Required for CORS support to work
      // dio.options.headers["Access-Control-Allow-Credentials"] =
      //     true; // Required for cookies, authorization headers with HTTPS
      // dio.options.headers["Access-Control-Allow-Headers"] =
      //     "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale";
      // dio.options.headers["Access-Control-Allow-Methods"] =
      //     "POST, GET, OPTIONS, PUT, DELETE, HEAD";
      // try {
      //   Response response = await dio.post(
      //     "https://8811-49-207-186-4.in.ngrok.io/login",
      //     data: params,
      //   );

      //   if (response.data != null) {
      //     return Result.success(LoginSuccess());
      //   }
      // } catch (e) {
      //   print(e.toString());
      // }

      final commonResponse = await api.post(body: body);
      if (commonResponse.error != null) {
        return Result.failure(ErrorResponse());
      }

      if (commonResponse.response != null) {
        return Result.success(LoginSuccess());
      }
      return Result.failure(ErrorResponse());
    } catch (e) {
      return Result.failure(ErrorResponse());
    }
  }
}
