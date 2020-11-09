import 'package:http/http.dart';
import 'dart:convert';

String tempurl = 'https://localhost:3000';
String url = 'https://tranquil-hollows-50478.herokuapp.com';
createpost(String itemtype, String item_name, double latitude, double longitude,
    String publisher_id, String isrequirement, int quantity) async {
  dynamic body = {
    "item_type": itemtype,
    "item_name": item_name,
    "latitude": latitude,
    "longitude": longitude,
    "publisher_id": publisher_id,
    "isrequirement": isrequirement,
    "quantity": quantity
  };
  dynamic encodedbody = jsonEncode(body);

  try {
    Response response = await post(
      "$url/posts/create",
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    print("addd post response");
    // print(jsonDecode(response.body));
    // dynamic decodedbody = jsonDecode(response.body);
    // print(decodedbody);
    // decodedbody.foreach((data) => {});
    return (jsonDecode(response.body));
  } catch (err) {
    print(err);
  }
}

getposts(String email, double latitude, double longitude, String role) async {
  List posts = [];
  dynamic body = {
    "email": email,
    "latitude": latitude,
    "longitude": longitude,
    "role": role
  };
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post('$url/posts/getpost',
        body: encodedbody, headers: {'Content-Type': 'application/json'});
    dynamic decodedbody = jsonDecode(response.body);
    //print(jsonDecode(response.body));
    print(decodedbody);
    return (decodedbody);
  } catch (err) {
    print(err);
  }
}

getmyposts(String email) async {
  dynamic body = {"email": email};
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post('$url/posts/getmyposts',
        body: encodedbody, headers: {'Content-Type': 'application/json'});
    dynamic decodedbody = jsonDecode(response.body);
    return (decodedbody);
  } catch (e) {
    print(e);
  }
}

bloodcreatepost(String blood_group, int quantity, double latitude,
    double longitude, String publisher_id, String description) async {
  dynamic body = {
    "blood_group": blood_group,
    "quantity": quantity,
    "latitude": latitude,
    "longitude": longitude,
    "publisher_id": publisher_id,
    "description": description
  };
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      '$url/posts/bloodcreate',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    print(jsonDecode(response.body));

    return jsonDecode(response.body);
  } catch (err) {
    print(err);
  }
}

getbloodposts(String email, double latitude, double longitude) async {
  dynamic body = {"email": email, "latitude": latitude, "longitude": longitude};
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      '$url/posts/bloodpost',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    print(jsonDecode(response.body));
    return jsonDecode(response.body);
  } catch (e) {
    print(e);
  }
}
