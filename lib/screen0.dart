import 'package:flutter/material.dart';

class Screen0 extends StatelessWidget {
  const Screen0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 0'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context, '1'),
                child: Text('Go to Screen 1'),),
          ],
        ),
      ),
    );
  }
}
