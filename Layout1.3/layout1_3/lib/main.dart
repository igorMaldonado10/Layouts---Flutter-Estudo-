import 'package:flutter/material.dart';
import 'package:layout1_3/Layout1_3.dart';

void main() {
runApp(MyLayout());
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout ',
      debugShowCheckedModeBanner: false,
      home:Scaffold(body: Layout(),)
    );
  }
}
