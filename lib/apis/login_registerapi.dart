import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:onlineproject/models/signupModel.dart';
import 'package:onlineproject/config.dart';

class APIService {
  Future<bool> createUser(UserModel model) async {
    var authToken = base64.encode(
      utf8.encode(Config.key + "|" + Config.secret),
    );

    bool ret = false;

    try {
      var response = await Dio().post(Config.url,
          data: model.toJson(),
          options: new Options(headers: {
            HttpHeaders.authorizationHeader: 'Basic $authToken',
            HttpHeaders.contentTypeHeader: "application/json",
          }));
      if (response.statusCode == 200) {
        ret = true;
      }
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        ret = false;
      } else {
        ret = false;
      }
    }
    return ret;
  }
}
