import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  const Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ozon'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: ElevatedButton(
              child: Text('back'),
              onPressed: () {
                Navigator.pop(context);
              }),
        ));
  }
}
