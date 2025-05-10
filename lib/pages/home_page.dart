import 'package:flutter/material.dart';
import 'package:flutter_api_rest/widgets/circle.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -(size.width * 0.7)*0.2,
              right: -(size.width * 0.7)*0.1,
              child: Circle(size: size.width * 0.7, colors: [Colors.orange,Colors.deepOrange],)
            ),
            Positioned(
              top: -(size.width * 0.5)*0.2,
              left: -(size.width * 0.7)*0.1,
              child: Circle(size: size.width * 0.7, colors: [Colors.orange,Colors.deepOrange],)
            ),
          ],
        ),
      ),
    );
  }
}