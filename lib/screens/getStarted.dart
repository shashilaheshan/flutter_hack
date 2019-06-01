import 'package:flutter/material.dart';

import 'package:flutter_bot/uiElements/bottomClipper.dart';

import 'package:flutter_bot/uiElements/topClipper.dart';

class GetStarted extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GetStarted();
  }
}

class _GetStarted extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopClipper(),
        Text("Hello"),
        BottomClipper(),
      ],
    );
  }
}
