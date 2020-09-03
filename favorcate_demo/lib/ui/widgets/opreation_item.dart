
import 'package:flutter/material.dart';
import 'package:favorcate_demo/core/extension/int_extension.dart';

// ignore: must_be_immutable
class HYOperationItem extends StatelessWidget {
  Widget _icon;
  String title;
  Color textColor = Colors.black;

  HYOperationItem(this._icon, this.title, {this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey,
      width: 80.px,
      height: 50.px,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _icon,
          Text(title, style: TextStyle(color: textColor),)
        ],
      ),
    );
  }
}
