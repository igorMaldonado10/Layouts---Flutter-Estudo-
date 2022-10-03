import 'package:flutter/material.dart';
import 'package:stack/Stack.dart';

void main() => runApp(MyStack());


class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack de frango',
      home: Scaffold(
        body: StackPilha(),  
      ),
    );
  }
}
