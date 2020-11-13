import 'package:http/http.dart';
import 'dart:convert';

String url = 'https://tranquil-hollows-50478.herokuapp.com';
giverating(int rating_id, String rater_id, int rating, int post_id) async {
  dynamic body = {
    "rating_id": rating_id,
    "rater_id": rater_id,
    "rating": rating,
    "post_id": post_id
  };
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      '$url/rate/giverating',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    dynamic decodedbody = jsonDecode(response.body);
    return decodedbody;
  } catch (err) {
    print(err);
  }
}

getraters(String email, int post_id) async {
  dynamic body = {"email": email, "post_id": post_id};
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      '$url/rate/getraters',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    dynamic decodedbody = jsonDecode(response.body);
    print(decodedbody);
    return decodedbody;
  } catch (err) {
    print(err);
  }
}
