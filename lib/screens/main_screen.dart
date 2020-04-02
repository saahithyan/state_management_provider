import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/providers/app_bar_provider.dart';
import 'package:state_management_provider/providers/text_provider.dart';
import 'package:state_management_provider/screens/level1.dart';
import 'package:state_management_provider/widgets/app_bar_title.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppBarProvider()),
        ChangeNotifierProvider(create: (_) => TextProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter with Provider',
        home: Scaffold(
          appBar: AppBar(title: AppBarTitle()),
          body: Level1(),
        ),
      ),
    );
  }
}
