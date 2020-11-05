import 'package:http/http.dart';
import 'dart:convert';
import 'package:aider/widgets/rowelement.dart';

String url = 'https://tranquil-hollows-50478.herokuapp.com';
acceptchat(String receiverid, String myid, String isaccepted) async {
  dynamic body = {
    "sender_id": myid,
    "receiver_id": receiverid,
    "accepted": isaccepted,
  };
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      "$url/chat/chataccepted",
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    dynamic decodedresponse = jsonDecode(response.body);
    print(decodedresponse);
    return decodedresponse;
  } catch (err) {
    print(err);
  }
}

getchat(int id) async {
  dynamic body = {"chat_id": id};
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      '$url/chat/getchats',
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    dynamic decodedresponse = jsonDecode(response.body);
    print(decodedresponse);
    return decodedresponse;
  } catch (err) {
    print(err);
  }
}

send_message(int chat_id, String message, String author) async {
  dynamic body = {"chat_id": chat_id, "message": message, "author": author};
  dynamic encodedbody = jsonEncode(body);
  try {
    Response response = await post(
      "$url/chat/sendmsg",
      body: encodedbody,
      headers: {'Content-Type': 'application/json'},
    );
    dynamic decodedresponse = jsonDecode(response.body);
    print(decodedresponse);
    return decodedresponse;
  } catch (e) {
    print(e);
  }
}
