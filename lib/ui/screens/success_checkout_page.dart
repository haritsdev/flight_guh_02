import '../../shared/theme.dart';
import '../../ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessCheckoutScreen extends StatelessWidget {
  const SuccessCheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_success.png'))),
            ),
            Text(
              'Well Booked 😍',
              style:
                  blackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
            ),
            CustomButton(
              title: 'My Bookings',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
              margin: EdgeInsets.only(top: 50),
              width: 220,
            )
          ],
        ),
      ),
    );
  }
}
