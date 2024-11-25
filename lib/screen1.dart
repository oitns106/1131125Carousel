import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: ()=>Navigator.pushNamed(context, '2'),
              child: Text('Go to Screen 2'),),
          ],
        ),
      ),
    );
  }
}
