import 'package:flight_guh_02/shared/theme.dart';
import 'package:flutter/material.dart';

class CardPay extends StatelessWidget {
  const CardPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/icon_plane.png'))),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Pay',
              style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            )
          ],
        ),
      ),
    );
  }
}
