import 'package:flutter/material.dart';
import 'package:islami_app/Sura%20details/sura_details_screen.dart';
import 'package:islami_app/home/Home.dart';
import 'package:islami_app/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.LightTheme,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
