import 'package:flutter/material.dart';
import 'package:nlw_flutter/shared/themes/app_text_style.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final TextStyle? style;

  LabelButton({
    Key? key,
    required this.label,
    this.style,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextButton(
        onPressed: onTap,
        child: Text(
          label,
          style: style ?? TextStyles.buttonBoldHeading,
        ),
      ),
    );
  }
}
