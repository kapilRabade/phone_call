import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:phone_call/phone_call.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController numberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    numberController.text = "1234567891";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: numberController,
                decoration: const InputDecoration(labelText: "Phone Number"),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              child: const Text(" Call"),
              onPressed: () async {
                PhoneCall.calling(numberController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
