import 'package:flutter/material.dart';
import 'constants.dart';


class IconContext extends StatelessWidget {
  IconContext({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kiconsize,
        ),
        SizedBox(
          height: kSizedboxheight,
        ),
        Text(
          label,
          style: ktxtstyle
        ),
      ],
    );
  }
}
