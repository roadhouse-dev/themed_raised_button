library themedraisedbutton;

import 'package:flutter/material.dart';

class ThemedRaisedButton extends StatelessWidget {
  final Function() onPressed;
  final Widget child;
  final Color color;
  final ButtonType buttonType;
  final ButtonTextTheme textTheme;
  final FocusNode focusNode;

  ThemedRaisedButton({
    this.onPressed,
    this.child,
    this.color,
    this.buttonType = ButtonType.normal,
    this.textTheme = ButtonTextTheme.primary,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    buttonColor = color == null ? Theme.of(context).accentColor : color;
    return RaisedButton(
      focusNode: focusNode,
      onPressed: onPressed,
      color: buttonColor,
      textTheme: textTheme,
      child: Container(
        alignment: Alignment.center,
        child: child,
        height: buttonType == ButtonType.normal ? 44 : 24,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    );
  }
}

enum ButtonType {
  small,
  normal
}
