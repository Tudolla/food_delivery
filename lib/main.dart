import 'package:flutter/material.dart';
import 'package:food_ecomerce/pages/login_page.dart';
import 'package:food_ecomerce/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MyApp()),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }

}