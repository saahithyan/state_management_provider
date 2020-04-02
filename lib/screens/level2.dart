import 'package:flutter/material.dart';
import 'package:state_management_provider/screens/level3.dart';
import 'package:state_management_provider/widgets/my_input.dart';

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyInput(),
        Level3(),
      ],
    );
  }
}