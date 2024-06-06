import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget addContainer(
      {AlignmentGeometry? alignment,
      EdgeInsetsGeometry padding = EdgeInsets.zero,
      EdgeInsetsGeometry margin = EdgeInsets.zero,
      Decoration? decoration,
      double? width,
      double? height,
      Color? color}) {
    return Container(
      alignment: alignment,
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      color: color,
      decoration: decoration,
      child: this,
    );
  }

  Widget addGreyBox(
      {AlignmentGeometry? alignment,
        EdgeInsetsGeometry padding = EdgeInsets.zero,
        EdgeInsetsGeometry margin = EdgeInsets.zero,
        Decoration? decoration,
        double? width,
        double? height,
        Color? color}) {
    return this.addContainer(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  Widget addExpanded({int flex = 1}){
    return Expanded(
      flex: flex,
      child: this,
    );
  }

  Widget addFittedBox({BoxFit fit = BoxFit.contain}){
    return FittedBox(
      fit: fit,
      child: this,
    );
  }
}
