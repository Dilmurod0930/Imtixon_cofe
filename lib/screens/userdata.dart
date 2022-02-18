import 'package:exam/models/models.dart';
class Userdata {
  static List<UserModel> users = [
    UserModel(1, 'John', '+998994205415' ,'john@gmail.com', 'password'),
    UserModel(2, 'Wick', '+998930981730' ,'wick@gmail.com', 'johnwick777'),
  ];

  static UserModel currentUser = users[0];
}