import "package:flutter/material.dart";

void main(){
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget{

  const ToggleColor({super.key});

  @override
  State createState() => _ToggleColorState();
}

class _ToggleColorState extends State{

  bool changeColor = true;

  @override
  Widget build(BuildContext context){

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home : Scaffold(

        appBar : AppBar(

          title : const Text("Toggle Color App"),
          centerTitle : true,
          backgroundColor: Colors.blue,
        ),

        body : Center(

          child : Container(

            width: 200,
            height : 200,
            color : changeColor? Colors.red : Colors.green,
          ),
        ),

        floatingActionButton : FloatingActionButton(

          onPressed: (){
            
            if(changeColor == true){
              changeColor = false;
            }else{
              changeColor = true;
            }

            setState(() {});
          },

          backgroundColor: Colors.blue,

          child : const Text("Toggle"),

        ),
      ),
    );
  }
}