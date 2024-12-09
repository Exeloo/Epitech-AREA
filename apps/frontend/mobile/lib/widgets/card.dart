import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color backgroundColor;

  const MyCard({Key? key, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Container(
            width: double.infinity,
            height: 200,
            child: Card(
              color: Colors.pink,
            ),
          ),
        ));
  }
}
