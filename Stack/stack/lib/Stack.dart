import 'dart:html';

import 'package:flutter/material.dart';

class StackPilha extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new StackState();
}

class StackState extends State<StackPilha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Barra de Título
        appBar: AppBar(
          title: new Text('Stack - Empilhamento',)),


          // Menu Lateral
        drawer: new Drawer() ,

        body: new Stack(
        children: [
        new Container( 
          
         margin: EdgeInsets.all(30),
         padding: const EdgeInsets.all(10), 
         width: 300,
         height: 400,
         color: Colors.blueAccent,
          child: new Text(
              'Stack 1',
          style: TextStyle(fontSize: 32),
              ),
         ),

        // Segundo Elemento (acimma do primeiro)
          new Container(
            margin: EdgeInsets.all(5),
         padding: const EdgeInsets.all(10), 
         width: 250,
         height: 350,
         color: Colors.purpleAccent,
          child: new Text(
              'Segundo Elemento',
          style: TextStyle(fontSize: 32),
              ),
          ), 

          // Terceiro Elemento (acima do segundo)
            new Container(
            margin: EdgeInsets.all(20),
         padding: const EdgeInsets.all(10), 
         width: 200,
         height: 300,
         color: Colors.redAccent,
          child: new Text(
              'Terceiro elemento',
          style: TextStyle(fontSize: 32),
              ),
          ), 

          new Container(
           color: Colors.yellow.shade500,
           width: 150,
           height: 250,
           margin: EdgeInsets.all(175),
           padding: EdgeInsets.all(10),
           child: new Text('Quarto elemento'),
          ),
         ],
          

         ),

      bottomNavigationBar: BottomNavigationBar(items: [
        
        BottomNavigationBarItem(icon: 
        Icon(Icons.home),
        label: 'Home'
        ),

        BottomNavigationBarItem(icon: 
        Icon(Icons.logout),
        label: 'Sair')
      ]),
      ),
    );
    
  }
  

          
}
