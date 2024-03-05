import 'package:flutter/material.dart';
import 'package:flux_store/widgets/intro_button.dart';
import 'package:go_router/go_router.dart';

class Intro_1 extends StatelessWidget {
  const Intro_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        onbording(),
      ]),
    );
  }
}

class onbording extends StatelessWidget {
  const onbording({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Discover something new'),
        Text('Special new arrivals just for you'),
        Container(
          width: 261,
          height: 368,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/onbording_1.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        IntroButton(
          onTap: () {},
          text: 'Shopping now',
        ),
      ],
    );
  }
}
