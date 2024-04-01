import 'package:flutter/material.dart';
import 'package:com_lvoxx_urban_dictionary/core/constant/regex.dart'
    as app_regex;

class UnderlineText extends StatelessWidget {
  const UnderlineText({required this.text, required this.textStyle, super.key});
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: _buildTextSpans(context),
        style: textStyle,
      ),
    );
  }

  List<TextSpan> _buildTextSpans(BuildContext context) {
    final spans = <TextSpan>[];
    final regex = app_regex.bracketText;
    final matches = regex.allMatches(text);
    var previousMatchEnd = 0;

    for (final match in matches) {
      // Add preceding text
      spans
        ..add(
          TextSpan(
            text: text.substring(previousMatchEnd, match.start),
          ),
        )
        ..add(
          TextSpan(
            text: match.group(1), // Get the text within []
            style: textStyle.copyWith(
              decoration: TextDecoration.underline,
              color: Theme.of(context).primaryColor,
            ),
          ),
        );
      previousMatchEnd = match.end;
    }

    spans.add(
      TextSpan(
        text: text.substring(previousMatchEnd),
      ),
    );

    return spans;
  }
}
