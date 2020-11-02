import 'package:http/http.dart';
import 'dart:convert';

String url = 'https://tranquil-hollows-50478.herokuapp.com';
createpost(String itemtype, String item_name, double latitude, double longitude,
    String publisher_id) async {
  dynamic body = {
    "item_type": itemtype,
    "item_name": item_name,
    "latitude": latitude,
    "longitude": longitude,
    "publisher_id": publisher_id
  };
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      "$url/posts/create",
      headers: {'Content-Type': 'application/json'},
      body: encodedbody,
    );
    print(jsonDecode(response.body));
    return (jsonDecode(response.body));
  } catch (err) {
    print(err);
  }
}
