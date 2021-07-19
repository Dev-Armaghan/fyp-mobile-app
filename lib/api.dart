import 'dart:convert';

import 'package:http/http.dart' as http;
class Api {
  final String baseUrl = '192.168.10.10:8000';
  register(String username , String email, String password) async {
    var url = Uri.http(baseUrl,
        '/api/registerUser', {"q": "dart"});
    final response = await http.post(url, body: {
      "user_name": username,
      "email": email,
      "password": password,
    });
    print(response);
  if (response.statusCode == 200) {
      final String responseString = response.body;
      return jsonDecode(responseString);
    }
    else if (response.statusCode == 500) {
      final String responseString = response.body;
      return jsonDecode(responseString);
    }
    else{
      final String responseString = response.body;
      return jsonDecode(responseString);
    }
  }
  login(String email, String password) async {
    var url = Uri.http(baseUrl,
        '/api/loginUser', {"q": "dart"});
    final response = await http.post(url, body: {
      "email": email,
      "password": password,
    });
    if (response.statusCode == 200) {
      final String responseString = response.body;
      return jsonDecode(responseString);
    }
    else if (response.statusCode == 500) {
      final String responseString = response.body;
      return jsonDecode(responseString);
    }
    else{
      final String responseString = response.body;
      return jsonDecode(responseString);
    }
  }
}