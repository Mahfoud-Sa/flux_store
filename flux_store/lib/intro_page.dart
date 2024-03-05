import 'package:flutter/material.dart';
import 'package:flux_store/intro_1.dart';
import 'package:flux_store/widgets/intro_button.dart';
import 'package:go_router/go_router.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/intro.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'welcome to my shop',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'the home of fashion',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            IntroButton(
              onTap: () {
                context.go('/intro_1');
              },
              text: 'Get Started',
            ),
            SizedBox(
              height: 120,
            )
          ],
        ),
      ),
    );
  }
}
