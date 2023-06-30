import 'package:flutter/material.dart';
import '../constants.dart';

class CalculateButton extends StatelessWidget {
  String label;
  Function? onPressed;

  CalculateButton({@required this.label = "CALCULATE", this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        onPressed!();
      },
      style: kButtonStyle,
      child: Text(
        label,
        style: kButtonLabelTextStyle,
      ),
    );
  }
}
