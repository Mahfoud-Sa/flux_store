import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flux_store/app/features/Auth/presentation/widgets/auth_button.dart';
import 'package:flux_store/app/features/Auth/presentation/widgets/social_media_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 163,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Login\nInto your account',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                  child: Column(
                children: [
                  InputFieldWidget(hintText: 'Email Address'),
                  SizedBox(
                    height: 20,
                  ),
                  InputFieldWidget(hintText: 'Password'),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Forget Password?')),
              const SizedBox(
                height: 40,
              ),
              AuthButton(
                onTap: () {},
                text: 'LOG IN',
              ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Or login with'),
              ),
              SizedBox(
                width: 146,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SocialMediaButton(onTap: () {}, iconPath: 'apple_icon.png'),
                    SocialMediaButton(
                        onTap: () {}, iconPath: 'google_icon.png'),
                    SocialMediaButton(
                        onTap: () {}, iconPath: 'facebook_icon.png')
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Text('Do not Have an account? Sign Up')
            ],
          ),
        ),
      ),
    );
  }
}

class InputFieldWidget extends StatelessWidget {
  final String hintText;
  const InputFieldWidget({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
