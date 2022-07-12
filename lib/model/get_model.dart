import 'package:http/http.dart' as http;
import 'dart:convert';

class User{
  String id;
  String email;
  String first_name;
  String last_name;
  String avatar;
  User({required this.id,  required this.email, required this.first_name, required this.last_name, required this.avatar});

  factory User.createUser(Map<String, dynamic> object){
    return User(
      id: object['id'].toString(), 
      email: object['email'],
      first_name: object['first_name'],
      last_name: object['last_name'],
      avatar: object['avatar'],
    );
  }
  
 }
