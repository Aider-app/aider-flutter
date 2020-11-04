import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:aider/widgets/rowelement.dart';

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

getposts(double latitude, double longitude, String role) async {
  List posts = [];
  dynamic body = {"latitude": latitude, "longitude": longitude, "role": role};
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post('$url/posts/getpost',
        body: encodedbody, headers: {'Content-Type': 'application/json'});
    dynamic decodedbody = jsonDecode(response.body);
    //print(jsonDecode(response.body));
    print(decodedbody[0]);
    return (decodedbody);
  } catch (err) {
    print(err);
  }
}
