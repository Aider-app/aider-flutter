import 'package:http/http.dart';
import 'dart:convert';

/*Future<Map<String, dynamic>> */ login(String email, String password) async {
  dynamic body = {
    "email": email,
    "password": password,
  };
  var encodedbody = jsonEncode(body);

  try {
    Response login = await post(
      'https://tranquil-hollows-50478.herokuapp.com/users/login',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );

    return jsonDecode(login.body);
  } catch (err) {
    print(err);
  }
}
