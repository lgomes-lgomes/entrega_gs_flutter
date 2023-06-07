import 'package:app_global_solution/constants/app_colors.dart';
import 'package:app_global_solution/pages/image_history_page.dart';
import 'package:app_global_solution/pages/image_list_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const homePageRoute = '/';

  final String loremText =
      'Aplicativo que contém informações como cultura da plantação, se tem pragas presentes na plantação, informações sobre irrigação e latitude e longitude de onde a foto foi tirada.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP GLOBAL SOLUTION'),
        centerTitle: true,
        backgroundColor: AppColors.appPrimaryColor,
      ),
      body: Container(
        color: AppColors.appBackgroundColor,
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                loremText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: AppColors.appTextColorColor,
                ),
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    ImageListPage.imageListPageRoute,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appPrimaryColor,
                  ),
                  child: const Text('VER IMAGENS'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    ImageHistoryPage.imageHistoryPageRoute,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appPrimaryColor,
                  ),
                  child: const Text('HISTÓRICO DE IMAGENS'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
