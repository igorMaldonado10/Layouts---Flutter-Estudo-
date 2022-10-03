import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LayoutState();
}

class LayoutState extends State<Layout> {
  Row criarRow(String texto,) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        new Container(
          margin: EdgeInsets.only(top: 15),
          // height: 50,
          width: 350,
          child: new Text(texto,
              style: TextStyle(fontWeight: FontWeight.bold)),
          color: Colors.brown.shade100,
          padding: EdgeInsets.all(15),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: new Text('Layout 1.3'),
        ),
        drawer: Drawer(
          child: ListView(
              // padding: EdgeInsets.zero,
              children: <Widget>[
                new DrawerHeader(
                  child: new Text('Itens da páginas'),
                  decoration: BoxDecoration(color: Colors.blueAccent),
                ),

                // Item 1
                ListTile(
                  tileColor: Colors.blue.shade100,
                  title: new Text('Item 1'),
                  leading:
                      Icon(Icons.umbrella_sharp, size: 32, color: Colors.black),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => Navigator.pop(context),
                ),

                // Item 2
                ListTile(
                  tileColor: Colors.blue[100],
                  title: new Text('Item 2'),
                  leading: Icon(
                    Icons.sports_soccer,
                    size: 32,
                    color: Colors.black,
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => Navigator.pop(context),
                ),

                ListTile(
                  tileColor: Colors.blue[100],
                  title: new Text('Item 3'),
                  leading: Icon(
                    Icons.music_note_outlined,
                    size: 32,
                    color: Colors.black,
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => Navigator.pop(context),
                ),
              ]),
        ),

        body: Column(
          children: [
            criarRow('Linha de teste'),

            criarRow('Esta é a segunda linha'),

            new Row(
             mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              // Padding(padding: EdgeInsets.only(top: 150)),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: 
              new Text('Linha feita manualmente',
              style: TextStyle(fontWeight: FontWeight.bold),),
              // height: 15,
              width: 350,
              color: Colors.pink,
              padding: EdgeInsets.all(15),        
              ),
            ],   
           ),
           Padding(padding: EdgeInsets.only(top:15)),
           new Center(
            child: ElevatedButton(
        child: new Text('Mostrar SnackBar'),
        onPressed: () {
               final snackBar = SnackBar(
        content: new Text('Olá, Tudo bem?'),
        duration: Duration(milliseconds: 2500),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
                label: 'OK',
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
      ),
          ],
        ),
        
//  body: Center(
//         child: ElevatedButton(
//         child: new Text('Mostrar SnackBar'),
//         onPressed: () {
//                final snackBar = SnackBar(
//         content: new Text('Olá, Tudo bem?'),
//         duration: Duration(milliseconds: 2500),
//         behavior: SnackBarBehavior.floating,
//         action: SnackBarAction(
//                 label: 'OK',
//                 onPressed: () {},
//               ),
//             );
//             ScaffoldMessenger.of(context).showSnackBar(snackBar);
//           },
//         ),
//       ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login')
          ],
        ),
      ),
    );
  }
}
