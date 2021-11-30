import 'dart:io';

import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future<dynamic> signIn(email, password) async {
  Map<String, String> headers = {
    "Content-type": "application/x-www-form-urlencoded"
  };
  var body = {"username": email, "pin": password};
  print('auth service');

  headers.addAll({"Authorization": "Bearer "});

  final response = await http.post(
      Uri.parse("https://evisitbackenapi.herokuapp.com/api/v1/auth/signin"),
      headers: headers,
      body: body);
  //print('response1 $response');
  if (response.statusCode == 200) {
    var res = json.decode(response.body.toString());
    return res;
  } else {
    var res = json.decode(response.body);

    return res;
  }
}
