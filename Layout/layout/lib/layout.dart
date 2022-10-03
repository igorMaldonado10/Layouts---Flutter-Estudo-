import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Layout extends StatefulWidget {
  @override
  State createState() => new LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        //Barra de título
        appBar: new AppBar(
          title: new Text('Layout - Flutter'),
        ),

        // Menu Lateral (Hambúrguer)
        // ignore: unnecessary_new
        drawer: new Drawer(
          child: ListView(
            // padding: EdgeInsets.zero,
            children: <Widget>[
              //Cabeçalho do Menu
              DrawerHeader(
                child: new Text(
                  'Itens do Menu',
                  style: TextStyle(fontSize: 22),),                
                decoration: new BoxDecoration(color: Colors.blueAccent
                ),
              ),

              //Item 1
              new ListTile(
                title: new Text('Flutter'),
                subtitle: new Text('Tudo são widgets'),
                leading:
                    Icon(Icons.flash_on, color: Colors.amber[400], size: 32),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  //Aqui vai o código de uma ação ou método
                  Navigator.pop(context);
                },
              ),

              //Item 2
              new ListTile(
                title: new Text('Dart'),
                subtitle: new Text('É muito forte'),
                leading: Icon(
                  Icons.mood,
                  color: Colors.orange.shade200,
                  size: 32,
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  //Aqui vai o código de uma ação ou método
                  Navigator.pop(context);
                },
              ),

              //Item 3
              new ListTile(
                title: new Text('Caféssineo'),
                subtitle: new Text('Quero caféééé'),
                leading:
                    Icon(Icons.coffee_outlined, color: Colors.brown.shade600),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  //Aqui vai o código de uma ação ou método
                  Navigator.pop(context);
                },
              ),

              //Item 4
              new ListTile(
                title: new Text('Configurações'),
                subtitle: new Text('Ajustes no Sistema'),
                leading: Icon(Icons.settings, color: Colors.grey.shade700),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              // Item 5
              new ListTile(
                leading: Icon(Icons.flutter_dash,
                color: Colors.blue.shade500,),
                 title: new Text('Flutter Dash'),
                 subtitle: new Text('passarinho, que som é esse!'),
                 trailing: Icon(Icons.keyboard_arrow_right),
                 onTap: () => Navigator.pop(context),
              )
            ],
          ),
        ),

        // corpo do app
        body: Center(
          child: ElevatedButton(
            child: new Text("Mostrar SnackBar"),
            onPressed: () {
               final snackBar = SnackBar(
                content: new Text('Buenas, esta é uma snackBar'),
                duration: new Duration(milliseconds: 2500),
                behavior: SnackBarBehavior.floating,
                action: SnackBarAction(
                  label: 'OK',
                  onPressed: () {
                    //Aqui vai um código de alguma ação
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),

        //Barra de ícones (inferior)
        bottomNavigationBar: BottomNavigationBar(
          items: [
            // ícone Home
            BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                // Label == Rótulo
                label: 'Home'),

            BottomNavigationBarItem(
                icon: new Icon(Icons.settings),
                // Label == Rótulo
                label: 'Configurações'),

            // ícone Login
            BottomNavigationBarItem(
                icon: new Icon(Icons.login),
                // Label == Rótulo
                label: 'Login'),
          ],
        ),
      ),
    );
  }
}
