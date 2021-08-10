import 'package:flutter/material.dart';
import 'package:nlw_flutter/shared/themes/app_text_style.dart';

import 'package:nlw_flutter/shared/widgets/divider/divadier_vertical.dart';
import 'package:nlw_flutter/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;

  SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enablePrimaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onTap: primaryOnPressed,
              style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
            ),
          ),
          DivadierVertical(),
          Expanded(
              child: LabelButton(
                  label: secondaryLabel, onTap: secondaryOnPressed)),
        ],
      ),
    );
  }
}
