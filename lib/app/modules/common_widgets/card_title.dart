import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.title, required this.subTitle});
  
  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.textTheme.displaySmall),
        if (subTitle != null)
        Text(subTitle!, style: context.textTheme.bodyMedium),
      ],
    );
  }
}
