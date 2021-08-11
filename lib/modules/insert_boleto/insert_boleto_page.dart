import 'package:flutter/material.dart';
import 'package:nlw_flutter/shared/themes/app_colors.dart';

class InsertBoletoPage extends StatelessWidget {
  InsertBoletoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: BackButton(
          color: AppColors.input,
        ),
      ),
      body: Column(
        children: [
          Text('Preencha os dados do boleto'),
        ],
      ),
    );
  }
}
