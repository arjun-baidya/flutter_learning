import 'package:flutter/material.dart';
import 'package:flutter_learning/utils/routes.dart';
import 'package:flutter_learning/widgets/themes.dart';
// import pages
import 'pages/home_page.dart';
import 'pages/login_page.dart';

import 'widgets/themes.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      // debugShowCheckedModeBanner: false is for remove debug banner
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
      },
    );
  }
}