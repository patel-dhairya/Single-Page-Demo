import 'package:flutter/material.dart';
import 'package:single_demo/application/core/services/theme_services.dart';
import 'package:provider/provider.dart';
import 'package:single_demo/application/pages/page_1/page1.dart';
import 'package:single_demo/themes/theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeServices(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeServices>(
      builder: (context, themeService, child) {
        return MaterialApp(
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const Page1(),
        );
      },
    );
  }
}
