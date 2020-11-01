import 'package:http/http.dart';
import 'dart:convert';

String url = 'https://tranquil-hollows-50478.herokuapp.com';
createpost(String itemtype, String item_name, double latitude, double longitude,
    String publisher_id) async {
  dynamic body = {
    "item_type": "clothes",
    "item_name": "shirt",
    "latitude": 102142.2,
    "longitude": 102452.55,
    "publisher_id": "jmsmidhunkrishna@gmail.com"
  };
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      "$url/posts/create",
      headers: {'Content-Type': 'application/json'},
      body: encodedbody,
    );
    print(jsonDecode(response.body));
  } catch (err) {
    print(err);
  }
}
