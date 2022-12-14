import 'dart:convert';


class UserDetailModel {

  factory UserDetailModel.fromRawJson(String str) =>
      UserDetailModel.fromJson(json.decode(str));

  //String toRawJson() => json.encode(toJson());


 final String userName;
 final String message;
 final String image;


  //String image;

  UserDetailModel({
    required this.userName,
     required this.image,
    required this.message,
  });




  factory UserDetailModel.fromJson(Map<String, dynamic> json) {
    return UserDetailModel(
        userName: json['user_name'],
        message: json['message'],
      image: json['image'],
    );
  }
  // Map<String, dynamic> toJson() => {
  //   "Syed Saif": userName,
  //   "message": message,
  //
  // };

}
