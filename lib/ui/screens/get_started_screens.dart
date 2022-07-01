import '../../ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../shared/theme.dart';

class GetStartedScreens extends StatefulWidget {
  const GetStartedScreens({Key? key}) : super(key: key);

  @override
  _GetStartedScreensState createState() => _GetStartedScreensState();
}

class _GetStartedScreensState extends State<GetStartedScreens> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: kTransparentColor));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /** * HIDE system overlay android on bottom */

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
                CustomButton(
                  title: 'Get Started',
                  width: 220,
                  margin: EdgeInsets.only(top: 50, bottom: 70),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
