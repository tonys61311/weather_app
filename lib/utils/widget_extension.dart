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
      {EdgeInsetsGeometry padding = const EdgeInsets.all(16),
        EdgeInsetsGeometry margin = EdgeInsets.zero,
        Decoration? decoration,}) {
    return this.addContainer(
      padding: padding,
      decoration: decoration ??
          BoxDecoration(
            color: Colors.grey[900]!.withOpacity(0.85),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
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
