class UserModel {
  String fullname;
  String email;
  String password;
  String repassword;

  UserModel({
    this.fullname,
    this.email,
    this.password,
    this.repassword,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};

    map.addAll({
      "fullname": fullname,
      "email": email,
      "password": password,
      "repassword": repassword,
    });
    return map;
  }
}
