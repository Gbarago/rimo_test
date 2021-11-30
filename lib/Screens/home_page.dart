import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rimo_test/widgets/input.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    email = emailController.text;
    password = passwordController.text;

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  backButton(),
                  SizedBox(
                    height: size.height * 0.12,
                  ),
                  Text(
                    'Sign in to your account',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    ''' Sign in to your Settl account and enjoy\n 
 the endless possibilities.''',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              ),
            ),
            height: size.height * 1,
            width: size.width * 1,
            decoration: BoxDecoration(
              color: Color(0xff4F1699),
            ),
          ),
          Positioned(
              //bottom: size.height * 0.45,
              top: size.height * 0.437,
              child: Container(
                child: ListView(
                  children: [
                    SizedBox(
                      height: size.height * 0.045,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Input(
                        onSaved: null,
                        validator: null,
                        hintText: 'Email',
                        fillColor: Color(0xffF6EFFF),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Input(
                        fillColor: Color(0xffF6EFFF),
                        onSaved: null,
                        validator: null,
                        hintText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ButtonNoGradient(
                        color: Color(0xff4F1699),
                        onpressed: () {
                          Navigator.pushNamed(context, 'Dashboard');
                        },
                        title: 'Sign in',
                        textColor: Colors.white,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Color(0xff4F1699),
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don’t have a Settl account? '),
                        GestureDetector(
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                              color: Color(0xff4F1699),
                              fontSize: 14,
                            ),
                          ),
                          onTap: () {},
                        )
                      ],
                    )
                  ],
                ),
                width: size.width * 1,
                height: size.height * 0.565,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
              ))
        ],
      ),
    );
  }
}
