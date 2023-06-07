import 'package:app_global_solution/constants/app_colors.dart';
import 'package:app_global_solution/models/image_model.dart';
import 'package:app_global_solution/pages/analyze_image_page.dart';
import 'package:flutter/material.dart';

class ImageListItemComponent extends StatelessWidget {
  ImageListItemComponent({Key? key, required this.imageModel})
      : super(key: key);

  ImageModel imageModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: AppColors.appPrimaryColor,
        height: 100,
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              imageModel.imageId,
              style: const TextStyle(
                color: AppColors.appTextColorColor,
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                AnalyzeImagePage.analyzeImagePageRoute,
                arguments: imageModel,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.appSecondaryColor,
              ),
              child: const Text(
                'DETALHES',
                style: TextStyle(
                  color: AppColors.appTextColorColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
