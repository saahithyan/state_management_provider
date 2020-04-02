import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onClick;

  Button({this.label, this.icon, this.onClick});

  List<Widget> _buildChildren() {
    List<Widget> list = [
      SizedBox(
        width: 19,
      ),
      Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      )
    ];

    if (icon != null) {
      list.insert(
        0,
        Icon(
          icon,
          color: Colors.white,
          size: 18,
        ),
      );
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildChildren(),
        ),
      ),
    );
  }
}
