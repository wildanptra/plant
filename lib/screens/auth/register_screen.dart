import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:plant/theme.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {

    Size size  = MediaQuery.of(context).size;

    Widget header(){
      return Container(
        height: size.height * 0.5,
        margin: const EdgeInsets.symmetric(
          horizontal: defaultPadding  * 2,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/register.svg',
              width: 170,
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              'Let’s save our planets, You need to Sign Up!',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
              ),
            )
          ]
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: primaryDarkTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Color(0xffECEDEF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_email.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: primaryDarkTextStyle,
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: TextStyle(color: primaryColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget fullnameInput() {
      return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: primaryDarkTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Color(0xffECEDEF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_username.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryDarkTextStyle,
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Your Full Name',
                          hintStyle: TextStyle(color: primaryColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primaryDarkTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: const Color(0xffECEDEF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_password.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryDarkTextStyle,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          hintText: 'Your Password',
                          hintStyle: TextStyle(color: primaryColor),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility : Icons.visibility_off,
                              color: primaryColor,
                            ),
                            onPressed: (){
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signInButton(){
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top:10),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )
          ),
          child: Text(
            'Sign Up',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    Widget footer(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultPadding * 2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: TextStyle(
                color: Color(0xff504F5E),
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          header(),
          Container(
              decoration: const BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2,
                  vertical: defaultPadding * 2
                ),
                child: Column(
                  children: [
                    fullnameInput(),
                    emailInput(),
                    passwordInput(),
                    signInButton(),
                    footer(),
                  ],
                ),
              ),
            ),
        ],
      )
    );
  }
}