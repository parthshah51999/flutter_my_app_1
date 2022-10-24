import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:my_app/themes/themes.dart';
import 'utils/routes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme setup for dark vs light
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      themeMode: ThemeMode.light,
      initialRoute: AppRoutes.home,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        AppRoutes.home: (context) => HomePage(),
        AppRoutes.login: (context) => LoginPage()
      },
    );
  }
}
