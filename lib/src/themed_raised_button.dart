import 'package:flutter/material.dart';

/// ThemedRaisedButton widget, make main UI source more clean.
class ThemedRaisedButton extends StatelessWidget {
  /// call back for button tap action
  final Function() onPressed;
  /// Widget in the button
  final Widget child;
  /// Button background color
  final Color color;
  /// Provide two types of button, [ButtonType.small] and [ButtonType.normal]
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
        height: buttonType == ButtonType.normal ? 44 : 32,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    );
  }
}

enum ButtonType {
  small,
  normal
}
