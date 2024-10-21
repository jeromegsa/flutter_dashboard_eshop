import "package:flutter/material.dart";
import 'package:flutter_dashboard_eshop/screens/home_page.dart';
void main ()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
    // routes: {
    //   "dashboard"=>Home
    // },
     debugShowCheckedModeBanner: false,
      title: "AzéApp",
      theme: ThemeData(primarySwatch: Colors.blue),
      // routes:
      home: HomePage(),
   );
  }
}