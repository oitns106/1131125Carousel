import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green,),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List imageToShow=[
    'assets/pizza1.png',
    'assets/pizza2.png',
    'assets/Fpizza.png',
    'assets/meal.jpg',
  ];
  int currentImage=0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(title: Text('Carousel demo'),),
        body: ListView(
          children: [
            CarouselSlider(
                items: imageToShow.map((i) {
                  return Container(
                    height: 100,
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //image: DecorationImage(image: AssetImage(i),
                      //                       fit: BoxFit.cover,),
                    ),
                    child: GestureDetector(
                      child: Image.asset(i, fit: BoxFit.cover,),
                      onTap: () {
                        print('Image is tapped!');
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageScreen(s: i)));
                      },
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 150,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  initialPage: 0,
                  autoPlayCurve: Curves.decelerate,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  autoPlayInterval: Duration(seconds: 2),
                  viewportFraction: 0.5,
                  onPageChanged: (position, reason) {
                    print('Current position: $position');
                    print('Change reason: $reason');
                    setState(()=>currentImage=position);
                  },
                ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: indicators(imageToShow.length, currentImage),
           ),
         ],
        ),
      );
  }
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
                    color:currentIndex==index? Colors.black:Colors.black26,
                    shape: BoxShape.circle,
                  ),
    );
  });
}

class ImageScreen extends StatelessWidget {
  String s='';
  ImageScreen({Key? key, required this.s}):super(key:key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product'),),
      body: GestureDetector(
        child: Center(
          child: Image(
            image: AssetImage(s),
            width: 400,
            height: 400,
          ),
        ),
        onTap: ()=>Navigator.pop(context),
      ),
    );
  }
}