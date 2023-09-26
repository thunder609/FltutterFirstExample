import "package:flutter/material.dart";

class CounterFuntionScreen extends StatefulWidget {
  const CounterFuntionScreen({super.key});
  @override
  State<CounterFuntionScreen> createState()=>_CounterFuntionScreen();
}
class _CounterFuntionScreen extends State<CounterFuntionScreen>{
  int  contador =0;
  String click="";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Contador Futions'),
      actions:[
        IconButton(
          icon: Icon(Icons.refresh_rounded),
          onPressed: (){
            setState(() {
         contador=0;
            });
          },
        ),
      ]
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('$contador', style: TextStyle(fontSize: 160,fontWeight: FontWeight.w100)),
            // Text('$click',style: TextStyle(fontSize: 25
            //OTRA FORMA
         //   Text('click${contador==1 ? '' : 's'}',style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ButtonPersonalizado(icon:Icons.refresh ,
          onPressed: () {
            contador = 0;
            setState(() {});
          }),
          const SizedBox(height: 11),
          ButtonPersonalizado(icon:Icons.exposure_minus_1_outlined ,
              onPressed: () {

                if(contador<=0)return ;
                contador--;
                setState(() {});
              }),
          const SizedBox(height: 10),
          ButtonPersonalizado(icon:Icons.plus_one,

              onPressed: () {
                contador++;
setState(() {

});
              }),

        /*    ButtonPersonalizado(),
          const SizedBox(height: 10),
          FloatingActionButton(
            shape: const StadiumBorder() ,
            onPressed: (){
              if(contador<0) return;
              contador-- ;
              if(contador<=1){
                click="click";
              }
              if(contador>1){
                click="clickS";
              }
              setState(() {

              });
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
          FloatingActionButton(
            shape: const StadiumBorder() ,
            onPressed: (){
              contador=0 ;

              setState(() {

              }
              );
            },
            child: const Icon(Icons.refresh_rounded),
          ) ,*/
      ],
      ) ,
    ) ;
  }
}

class ButtonPersonalizado extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const ButtonPersonalizado({
    super.key, required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton (
      enableFeedback: true,
        elevation: 15,
        shape:const StadiumBorder(),
    onPressed: onPressed,
    /*  onPressed: () {
        contador++ ;
    if(contador<=1){
    click="click";
    }
    if(contador>1){
    click="clickS";
    }
    setState(() {

    });*/

      child:  Icon(icon),
    );
  }
}
