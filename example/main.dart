import 'package:flutter/material.dart';
import 'package:carousel_plus/carousel_plus.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: true,
    title: 'Carousel Plus',
    home: CarouselPage(),
  ));
}

class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 150.0,
          width: 300.0,
          child: CarouselPlus(
            boxFit: BoxFit.cover,
            autoplay: false,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.topRight,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: [
              NetworkImage(
                  'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
              NetworkImage(
                  'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
              ExactAssetImage("assets/images/LaunchImage.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
