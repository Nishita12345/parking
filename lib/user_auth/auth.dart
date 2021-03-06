import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../http_exception.dart';

class Auth with ChangeNotifier {
  late String _token;
  late DateTime _expiryDate = DateTime.now();
  late String _userId;

  bool get isAuth {
    return token != null;
  }

  String? get token {
    if(_expiryDate!= null && _expiryDate.isAfter(DateTime.now()) && _token!= null){
      return _token;
    }
    return null;
  }

  Future<void> _authenticate(String email, String password, String urlSegment) async{
    try{
      final url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyAHV1SYTU11Fk7ZLZ3iAT2fb91A2OJmjY0');
      final response = await http.post(url, body: json.encode(
        {'email': email, 'password': password, 'returnSecureToken': true},),);
      final responseData = json.decode(response.body);
      if(responseData['error']!= null){
        throw HttpException(responseData['error']['message']);
      }
      _token = responseData['idToken'];
      _userId = responseData['localId'];
      _expiryDate = DateTime.now().add(Duration(seconds: int.parse(responseData['expiresIn']),
      ),);
      notifyListeners();
    } catch(error){
      throw error;
    }
  }

  Future<void> signup(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }
}