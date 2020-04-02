import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/providers/app_bar_provider.dart';

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBarProvider = Provider.of<AppBarProvider>(context);
    return Text(appBarProvider.appBarTitle);
  }
}