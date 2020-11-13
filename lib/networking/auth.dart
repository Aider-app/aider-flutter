import 'package:http/http.dart';
import 'dart:convert';

String url = 'https://tranquil-hollows-50478.herokuapp.com';
/*Future<Map<String, dynamic>> */ login(
  String email,
  String password,
) async {
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
    print(jsonDecode(login.body));
    return jsonDecode(login.body);
  } catch (err) {
    print(err);
  }
}

// ignore: missing_return
Future<Map<String, dynamic>> donorreg(
    String email, String contact, String name, String password) async {
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

// ignore: missing_return
Future<Map<String, dynamic>> receiverreg(String reg, String name, String mobile,
    String email, String password) async {
  dynamic body = {
    "reg_no": reg,
    "name": name,
    "mobile": mobile,
    "email": email,
    "password": password,
    "role": "receiver"
  };
  var encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      '$url/users/receiver/register',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    return jsonDecode(response.body);
  } catch (err) {
    print(err);
  }
}

// ignore: missing_return
Future<Map<String, dynamic>> bloodlog(String email, String password) async {
  dynamic body = {"email": email, "password": password};
  var encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      '$url/users/blood/login',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    print(jsonDecode(response.body));
    return jsonDecode(response.body);
  } catch (err) {
    print(err);
  }
}

// ignore: missing_return
Future<Map<String, dynamic>> bloodreg(
    String email,
    String contact,
    String address,
    // ignore: non_constant_identifier_names
    String blood_group,
    double latitude,
    double longitude,
    String password,
    String name) async {
  dynamic body = {
    "email": email,
    "contact": contact,
    "address": address,
    "blood_group": blood_group,
    "latitude": latitude,
    "longitude": longitude,
    "password": password,
    "name": name
  };
  var encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      '$url/users/blood/register',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    print(jsonDecode(response.body));
    return jsonDecode(response.body);
  } catch (err) {
    print(err);
  }
}

becomedonor(String email, bool value) async {
  dynamic body = {
    "email": email,
    "value": value,
  };
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      '$url/posts/becomedonor',
      headers: {'Content-Type': 'application/json'},
      body: encodedbody,
    );
    print(response.body);
    print(jsonDecode(response.body));
    return jsonDecode(response.body);
  } catch (e) {
    print(e);
  }
}
