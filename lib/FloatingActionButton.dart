import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final Color backgroundColor;
  final Color foregroundColor;
  final double elevation;
  final double hoverElevation;
  final double focusElevation;
  final double disabledElevation;
  final ShapeBorder shape;

  const CustomFloatingActionButton({
    required this.onPressed,
    required this.icon,
    this.backgroundColor = Colors.blue,
    this.foregroundColor = Colors.white,
    this.elevation = 6.0,
    this.hoverElevation = 8.0,
    this.focusElevation = 8.0,
    this.disabledElevation = 0.0,
    this.shape = const CircleBorder(),
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      hoverElevation: hoverElevation,
      focusElevation: focusElevation,
      disabledElevation: disabledElevation,
      shape: shape,
      child: icon,
    );
  }
}
