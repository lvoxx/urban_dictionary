import 'package:flutter/material.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/widget/underline_text.dart';

class LeftListTile extends StatelessWidget {
  const LeftListTile({required this.text, required this.textStyle, super.key});
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: UnderlineText(
        text: text,
        textStyle: textStyle,
      ),
    );
  }
}
