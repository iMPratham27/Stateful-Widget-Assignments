import "package:flutter/material.dart";

void main(){
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget{

  const PlayerApp({super.key});

  @override
  State createState() => _PlayerAppState();
}

class _PlayerAppState extends State{

  int playerIndex = 0;

  List<String> playerList = [
    
    "https://static.toiimg.com/thumb/resizemode-4,width-1280,height-720,msid-111741230/111741230.jpg",
    "https://cdn.britannica.com/48/252748-050-C514EFDB/Virat-Kohli-India-celebrates-50th-century-Cricket-November-15-2023.jpg",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202407/indias-jasprit-bumrah-245834700-16x9.jpg?VersionId=cRx75zIxZ_i3XOXcxpFvEH8wsf_GAF5A",
    "https://images.indianexpress.com/2024/07/hardik-pandya_1600_PTI.jpg",
    "https://www.royalchallengers.com/PRRCB01/public/styles/1061x767_landscape/public/2024-08/GettyImages-2159848280.jpg?itok=Zhqy2Qh5"
  ];

  @override
  Widget build(BuildContext context){

    return MaterialApp(

      debugShowCheckedModeBanner : false,

      home : Scaffold(

        appBar: AppBar(

          title : const Text("Indian Players App"),
          centerTitle : true,
          backgroundColor: Colors.blue,
        ),

        body : Center(

          child : Column(

            mainAxisAlignment: MainAxisAlignment.center,

           children: [

            SizedBox(
              height : 400,
              width : 400,
              child : Image.network(playerList[playerIndex]),
            ),
           ],

          ),
        ),


        floatingActionButton: FloatingActionButton(

          onPressed:(){

            if(playerIndex < playerList.length-1){
              playerIndex++;
            }else{
              playerIndex = 0;
            }

            setState(() {});
          },

          child : const Icon(Icons.navigate_next_sharp),
        ),
        ),
      );
  }
}