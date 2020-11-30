import 'package:flutter/material.dart';
import 'constants.dart';
class Boottybutton extends StatelessWidget {
  Boottybutton({@required this.onTap,@required this.line});
  final Function onTap;
  final String line;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(line,style: klargestyle,)),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}