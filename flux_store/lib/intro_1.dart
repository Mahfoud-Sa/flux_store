import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flux_store/widgets/intro_button.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro_1 extends StatelessWidget {
  Intro_1({super.key});
  var _PageController = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //background
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/intro_bg.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            //title
            const Column(
              children: [
                Text(
                  'Discover something new',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Special new arrivals just for you'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 368,
              child: PageView(
                  controller: _PageController,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  //   scrollBehavior: ,
                  allowImplicitScrolling: true,
                  children: const [
                    onbording(),
                    onbording(),
                    onbording(),
                  ]),
            ),
            const SizedBox(
              height: 60,
            ),
            SmoothPageIndicator(
              controller: _PageController,
              onDotClicked: (index) {},
              //controller: controller,  // PageController
              count: 3,
              effect: const SlideEffect(
                  spacing: 8.0,
                  dotWidth: 5.0,
                  dotHeight: 5.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.white,
                  activeDotColor: Colors.white), // your preferred effect
            ),
            const SizedBox(
              height: 40,
            ),
            IntroButton(
              onTap: () {},
              text: 'Shopping now',
            ),
          ],
        ),
      ),
    );
  }
}

class onbording extends StatelessWidget {
  const onbording({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/onbording_1.png"),
          // fit: BoxFit.fill,
        ),
      ),
    );
  }
}
