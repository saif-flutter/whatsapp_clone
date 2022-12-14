
import 'package:whatsapp_clone/Model/user_detail_Model.dart';

class UserDetailRepo {
  static List<UserDetailModel> getUserData()  {

    final List<Map<String,dynamic>> data =[
  {
        "user_name": "Syed Saif",
        "message": "Where are you ?",
    'image':'assets/1.jpeg'
      },

      {
        "user_name": "Syed Shabir",
        "message": "How are you ?",
        "image":"assets/2.jpeg"
      },

      {
        "user_name": "Fahad Ali",
        "message": "Location ?",
        "image":"assets/3.jpeg"
      },   {
        "user_name": "Ali Bukhari",
        "message": "Senga chal de ?",
        "image":"assets/4.jpeg"
      },
      {
        "user_name": "Ammar Khan",
        "message": "Kya kr rahe ho ?",
        "image":"assets/5.jpeg"
      },
      {
        "user_name": "Sikandar Shah",
        "message": "Kab jynge or kis time nikle ge ?",
        "image":"assets/person.jpeg"
      },
      {
        "user_name": "Noreen Fatima",
        "message": "How are you ?",
        "image":"assets/women.jpeg"
      },
      {
        "user_name": "Hamza Khan",
        "message": "How are you ?",
        "image":"assets/person2.jpeg"
      },
      {
        "user_name": "Faizan Badshah",
        "message": "Where are you ?",
        'image':'assets/pic.jpeg'
      },
    ];
     List<UserDetailModel> list= [];
    for(var i = 0 ; i<data.length;i++){
      UserDetailModel model = UserDetailModel.fromJson(data[i]);
      list.add(model);

    }
  return list;

  }
}