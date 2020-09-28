import 'dart:io';
import 'package:dio/dio.dart';
import 'package:onlineproject/models/lmodel.dart';

class APIService {
  Future<LoginResponseModel> loginUser(String email, String password) async {
    LoginResponseModel model;
    String url = "https://onlinepasal.herokuapp.com/account/login";
    try {
      var response = await Dio().post(url,
          data: {
            "email": email,
            "password": password,
          },
          options: new Options(headers: {
            HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded",
              }
            )
          );
      if (response.statusCode == 200) {
        model = LoginResponseModel.fromJson(response.data);
      }
    } on DioError catch (e) {
      print(e.message);
    }
    return model;
  }
}
