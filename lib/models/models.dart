class UserModel {
  int? _id;
  String? _name;
  String? _number;
  String? _email;
  String? _password;

  UserModel(int id, String name,String number, String email, String password) {
    _id = id;
    _name = name;
    _number = number;
    _email = email;
    _password = password;
  }
  int? get id => _id;
  get name => _name;
 get number => _number;
  get email => _email;

  get password => _password;
}