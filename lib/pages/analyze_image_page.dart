import 'package:app_global_solution/constants/app_colors.dart';
import 'package:app_global_solution/models/image_model.dart';
import 'package:flutter/material.dart';

class AnalyzeImagePage extends StatelessWidget {
  const AnalyzeImagePage({Key? key}) : super(key: key);
  static const analyzeImagePageRoute = '/analyze';

  @override
  Widget build(BuildContext context) {
    final imageModel = ModalRoute.of(context)!.settings.arguments as ImageModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ANÁLISE DE IMAGEM',
          style: TextStyle(
            color: AppColors.appTextColorColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.appPrimaryColor,
      ),
      body: Container(
        color: AppColors.appBackgroundColor,
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              'Imagem: ${imageModel.imageId}',
              style: const TextStyle(
                fontSize: 24,
                color: AppColors.appTextColorColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Cultura: ${imageModel.culture}',
              style: const TextStyle(
                fontSize: 24,
                color: AppColors.appTextColorColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Praga: ${imageModel.plagues}',
              style: const TextStyle(
                fontSize: 24,
                color: AppColors.appTextColorColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Deficência de nutrientes: ${imageModel.nutrientDeficiency ? 'Sim' : 'Não'}',
              style: const TextStyle(
                fontSize: 24,
                color: AppColors.appTextColorColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Material(
              elevation: 8,
              child: Image(
                image: AssetImage(imageModel.imageUrl),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
