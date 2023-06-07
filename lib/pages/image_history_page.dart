import 'package:app_global_solution/components/image_list_item_component.dart';
import 'package:app_global_solution/components/search_bar_component.dart';
import 'package:app_global_solution/constants/app_colors.dart';
import 'package:app_global_solution/models/data/image_data.dart';
import 'package:app_global_solution/models/image_model.dart';
import 'package:flutter/material.dart';

class ImageHistoryPage extends StatefulWidget {
  const ImageHistoryPage({Key? key}) : super(key: key);

  static const imageHistoryPageRoute = '/history';

  @override
  State<ImageHistoryPage> createState() => _ImageHistoryPageState();
}

class _ImageHistoryPageState extends State<ImageHistoryPage> {
  List<ImageModel> imageList = ImageData.imageModelList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: CustomSearchBar(
        onChanged: (search) => setState(
          () {
            imageList = _generateFiltredlist(search);
          },
        ),
        onPressed: () {},
      ),
      body: imageList.isNotEmpty
          ? ListView.builder(
              itemCount: imageList.length,
              itemBuilder: ((context, index) {
                return ImageListItemComponent(
                  imageModel: imageList[index],
                );
              }),
            )
          : const Center(
              child: Text('Nenhum resultado encontrado.'),
            ),
    );
  }

  /// _generateFiltredlist
  ///
  /// Gera lista filtrando pelo id da imagem.
  ///
  /// @param search dado informado na pesquisa para a busca.
  List<ImageModel> _generateFiltredlist(String search) {
    List<ImageModel> list = [];

    list = ImageData.imageModelList
        .where(
          (element) => element.imageId.contains(
            search.toUpperCase(),
          ),
        )
        .toList();

    return list;
  }
}
