import 'package:flutter/material.dart';
import 'package:nlw_flutter/shared/themes/app_colors.dart';
import 'package:nlw_flutter/shared/themes/app_text_style.dart';
import 'package:nlw_flutter/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:nlw_flutter/shared/widgets/set_label_buttons.dart/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      primaryLabel: 'Escanear novamente',
      primaryOnPressed: () {},
      secondaryLabel: 'Digitar código',
      title: 'Não foi possível identificar um código de barras.',
      subTitle: 'Tente escanear novamente ou digite o código do seu boleto.',
      secondaryOnPressed: () {},
    );
    return SafeArea(
      bottom: true,
      left: true,
      right: true,
      top: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              color: AppColors.background,
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              'Escaneie o código de barras do boleto',
              style: TextStyles.buttonBackground,
            ),
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryLabel: 'Inserir código do boleto',
            primaryOnPressed: () {},
            secondaryLabel: 'Adicionar da galeria',
            secondaryOnPressed: () {},
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
