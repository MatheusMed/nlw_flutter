import 'package:flutter/material.dart';
import 'package:nlw_flutter/shared/themes/app_colors.dart';

class DivadierVertical extends StatelessWidget {
  DivadierVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: double.maxFinite,
      color: AppColors.stroke,
    );
  }
}
