class UserModel {
   int? id;
  String? email;
  String? password;

  UserModel({this.id, required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {'id': id, 'email': email, 'password': password};
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      email: map['email'],
      password: map['password'],
    );
  }
}

