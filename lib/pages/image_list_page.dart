import 'package:app_global_solution/components/image_list_item_component.dart';
import 'package:app_global_solution/constants/app_colors.dart';
import 'package:app_global_solution/models/data/image_data.dart';
import 'package:flutter/material.dart';

class ImageListPage extends StatelessWidget {
  const ImageListPage({Key? key}) : super(key: key);

  static const imageListPageRoute = '/images';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMAGENS'),
        backgroundColor: AppColors.appPrimaryColor,
      ),
      body: Container(
        color: AppColors.appBackgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: ImageData.imageModelList.length,
          itemBuilder: ((context, index) {
            return ImageListItemComponent(
              imageModel: ImageData.imageModelList[index],
            );
          }),
        ),
      ),
    );
  }
}
