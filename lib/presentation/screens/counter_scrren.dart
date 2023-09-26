import "package:flutter/material.dart";

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState()=>_CounterScreen();
}
class _CounterScreen extends State<CounterScreen>{
 int  contador =0;
 String click="";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
            body:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text('$contador', style: TextStyle(fontSize: 160,fontWeight: FontWeight.w100)),
                 // Text('$click',style: TextStyle(fontSize: 25
                      //OTRA FORMA
                      Text('click${contador==1 ? '' : 's'}',style: TextStyle(fontSize: 25))
                ],
              ),
            ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
       contador++ ;
       if(contador<=1){
         click="click";
       }
       if(contador>1){
       click="clickS";
        }
           setState(() {

           });
        },
        child: const Icon(Icons.plus_one),
      ) ,
        ) ;
  }
}
