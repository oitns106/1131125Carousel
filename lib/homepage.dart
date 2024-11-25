import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: ()=>Navigator.pushNamed(context, '0'),
              child: Text('Go to Screen 0'),),
            ElevatedButton(
              onPressed: ()=>Navigator.pushNamed(context, '1'),
              child: Text('Go to Screen 1'),),
            ElevatedButton(
              onPressed: ()=>Navigator.pushNamed(context, '2'),
              child: Text('Go to Screen 2'),),
          ],
        ),
      ),
    );
  }
}
