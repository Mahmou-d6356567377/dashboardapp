
import 'package:flutter/material.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({
    super.key, required this.firstwidget, required this.secondwidget,
  });
 final Widget firstwidget;
 final Widget secondwidget;
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
      firstwidget,
      Spacer(),
     secondwidget,
     ],
    );
  }
}