import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imageList = [
    'assets/images/catagories/Mac.png',
    'assets/images/catagories/iPhones.jpeg',
    'assets/images/catagories/ipad.png',
    'assets/images/catagories/watch.png',
    'assets/images/catagories/Airpod.jpeg',
    'assets/images/catagories/Apple Air Tag.jpeg',
    'assets/images/catagories/Apple Tv 4K Wi-Fi + Ethernet, 128Gb, 2022.jpeg',
    'assets/images/catagories/AppleHomePod.jpeg',
    'assets/images/catagories/Accessories.jpeg',
  ];

  List<String> textList = [
    'Mac',
    'Iphone',
    'Ipad',
    'Apple Watch',
    'AirPods',
    'Air Tag',
    'Apple TV 4K',
    'HomePod',
    'Accessories',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 150,
            width: 100,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Image.asset(
                  imageList[index],
                  fit: BoxFit.fill,
                ),
                Text(
                  textList[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
