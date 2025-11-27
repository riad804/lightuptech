import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RichTextButton extends StatelessWidget {
  const RichTextButton({super.key, this.caption, required this.tapText, required this.onTap, this.isUnderlined = false});

  final String? caption;
  final String tapText;
  final bool isUnderlined;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 16),
        children: [
          if (caption != null)
          TextSpan(text: caption, style: context.textTheme.bodyMedium),
          TextSpan(text: " "),
          TextSpan(
            text: tapText,
            style: context.textTheme.titleSmall!.copyWith(
              decoration: isUnderlined ? TextDecoration.underline : null,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
