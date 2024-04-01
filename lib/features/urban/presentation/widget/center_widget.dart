import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({required this.widgets, super.key});
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: widgets,
      ),
    );
  }
}
