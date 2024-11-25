import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: ()=>Navigator.pop(context),
              child: Text('Return'),),
          ],
        ),
      ),
    );
  }
}
