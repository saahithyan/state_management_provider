import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/providers/app_bar_provider.dart';

class MyInput extends StatelessWidget {
  @override
//  Widget build(BuildContext context) {
//    return Consumer<AppBarProvider>(
//      builder: (BuildContext context, AppBarProvider provider, Widget child) {
//        return TextField(
//          onChanged: (val) {
//            provider.setAppBarTitle(val);
//          },
//        );
//      },
//    );
//  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppBarProvider>(context);

    return TextField(
      onChanged: (val) {
        provider.setAppBarTitle(val);
      },
    );
  }
}
