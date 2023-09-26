


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuevo/presentation/screens/counter_funtions_screem.dart';
//import 'package:nuevo/presentation/screens/counter_scrren.dart';

void  main(){
  runApp(MyApp());
}

 class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
   Widget build(BuildContext context){
    return  MaterialApp(
     debugShowCheckedModeBanner: false,
      theme:  ThemeData (
     useMaterial3: true,
      colorSchemeSeed: Colors.blue
      ),
      //home:const CounterScreen()
        home:const CounterFuntionScreen()

    );
  }

}