import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class GetStartedScreens extends StatelessWidget {
  const GetStartedScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightOfScreens = MediaQuery.of(context).size.height;
    double widthOfScreens = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            width: widthOfScreens,
            height: heightOfScreens,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/image_splash.png'))),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: semibold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let \nyourself get an amazing experiences',
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 220,
                  height: 50,
                  margin: EdgeInsets.only(top: 40, bottom: 80),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(defaultRadius))),
                    child: Text(
                      'Get Started',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
