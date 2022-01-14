import 'package:assetdata/views/form_brand.dart';
import 'package:assetdata/views/home_page.dart';
import 'package:assetdata/views/login.dart';
import 'package:assetdata/views/profil_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Petronas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      getPages: [
        // Page Login
        GetPage(
            name: '/',
            page: () => LoginScreen(),
            transition: Transition.fadeIn),
            // Page Home
        GetPage(
            name: '/homepage',
            page: () => HomePage(),
            transition: Transition.fadeIn),
            // Page Add Brand
        GetPage(
            name: '/addbrand',
            page: () => AddFormBrand(),
            transition: Transition.fadeIn),
            // Page Brand
        GetPage(
            name: '/profilpage',
            page: () => ProfilPage(),
            transition: Transition.fadeIn)
      ],
    );
  }
}
