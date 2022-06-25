import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpScreens extends StatelessWidget {
  const SignUpScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightOfScreens = MediaQuery.of(context).size.height;
    double widthOfScreens = MediaQuery.of(context).size.width;

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 25),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email Address'),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                  cursorColor: kBlackColor,
                  decoration: InputDecoration(
                      hintText: 'Your Email Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          borderSide: BorderSide(color: kPrimaryColor)))),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 25),
        // width: widthOfScreens * 0.87,
        height: heightOfScreens * 0.73,
        padding: EdgeInsets.symmetric(
            horizontal: widthOfScreens * 0.02, vertical: 30),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(defaultRadius)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              fullnameInput(),
              emailInput(),
              passwordInput(),
              hobbyInput(),
              submitButton(context),
              tacButton()
            ],
          ),
        ),
      );
    }

    //* BODY SCREENS SIGNUP
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection()],
        ),
      ),
    );
  }

  Widget fullnameInput() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Full Name'),
          SizedBox(
            height: 6,
          ),
          TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                  hintText: 'Your fullname',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: kPrimaryColor)))),
        ],
      ),
    );
  }
}

Widget passwordInput() {
  return Container(
    margin: EdgeInsets.only(bottom: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password'),
        SizedBox(
          height: 6,
        ),
        TextFormField(
            cursorColor: kBlackColor,
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Your Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor)))),
      ],
    ),
  );
}

Widget hobbyInput() {
  return Container(
    margin: EdgeInsets.only(bottom: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hobby'),
        SizedBox(
          height: 6,
        ),
        TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
                hintText: 'Your Hobby',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor)))),
      ],
    ),
  );
}

Widget submitButton(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 55,
    child: TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/bonus');
      },
      style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius))),
      child: Text(
        'Get Started',
        style: whiteTextStyle.copyWith(
            fontSize: 18, fontWeight: bold, letterSpacing: 1.25),
      ),
    ),
  );
}

Widget tacButton() {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 50, bottom: 70),
    child: Text(
      'Terms and Conditions',
      style: greyTextStyle.copyWith(
          fontSize: 16,
          fontWeight: light,
          decoration: TextDecoration.underline),
    ),
  );
}
