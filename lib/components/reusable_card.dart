import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  Function customTap;
  ReusableCard({@required this.color, this.cardChild, this.customTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: customTap,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
