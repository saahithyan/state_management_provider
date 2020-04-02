import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_bar_provider.dart';
import 'main_screen.dart';

class Another extends StatelessWidget {
  static String id = 'another_screen';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppBarProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Another Screen')),
      body: Center(child: Text(provider.appBarTitle)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, Main.id),
        child: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
