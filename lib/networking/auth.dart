import 'package:http/http.dart';
import 'dart:convert';

String url = 'https://tranquil-hollows-50478.herokuapp.com';
/*Future<Map<String, dynamic>> */ login(String email, String password) async {
  dynamic body = {
    "email": email,
    "password": password,
  };
  var encodedbody = jsonEncode(body);

  try {
    Response login = await post(
      '$url/users/login',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );

    return jsonDecode(login.body);
  } catch (err) {
    print(err);
  }
}

Future<Map<String, dynamic>> donorreg(
    String email, int contact, String name, String password) async {
  dynamic body = {
    "email": email,
    "contact": contact,
    "name": name,
    "password": password,
    "role": "donor"
  };
  var encodedbody = jsonEncode(body);
  try {
    Response register = await post(
      '$url/users/donor/register',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );

    return jsonDecode(register.body);
  } catch (err) {
    print(err);
  }
}
