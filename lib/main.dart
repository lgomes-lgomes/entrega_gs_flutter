import 'package:app_global_solution/constants/app_colors.dart';
import 'package:app_global_solution/pages/analyze_image_page.dart';
import 'package:app_global_solution/pages/home_page.dart';
import 'package:app_global_solution/pages/image_history_page.dart';
import 'package:app_global_solution/pages/image_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.appPrimaryColor,
      ),
      initialRoute: HomePage.homePageRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.homePageRoute: (context) => const HomePage(),
        ImageListPage.imageListPageRoute: (context) => ImageListPage(),
        AnalyzeImagePage.analyzeImagePageRoute: (context) =>
            const AnalyzeImagePage(),
        ImageHistoryPage.imageHistoryPageRoute: (context) =>
            const ImageHistoryPage(),
      },
    );
  }
}
