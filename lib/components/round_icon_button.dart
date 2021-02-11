import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed});
  final Function onPressed;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      fillColor: Colors.grey,
    );
  }
}
