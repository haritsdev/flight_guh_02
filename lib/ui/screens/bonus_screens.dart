import 'package:flight_guh_02/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusScreens extends StatelessWidget {
  const BonusScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [bonusCard(), title(), subTitle(), startButton(context)],
          ),
        ));
  }
}

Widget bonusCard() {
  return Container(
    width: 300,
    height: 211,
    padding: EdgeInsets.all(defaultMargin),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/bonus_card.png')),
        boxShadow: [
          BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 25,
              offset: Offset(0, 5)),
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: whiteTextStyle.copyWith(fontWeight: light),
                  ),
                  SizedBox(
                    width: 190,
                    child: Text(
                      'Teguh Muhammad Harits',
                      style: whiteTextStyle.copyWith(
                          fontWeight: bold, fontSize: 19),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 24,
              height: 24,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'))),
            ),
            Text(
              'Pay',
              style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: bold),
            )
          ],
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Balance',
                style: whiteTextStyle.copyWith(fontWeight: light),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'IDR 280.000.000',
                style:
                    whiteTextStyle.copyWith(fontWeight: medium, fontSize: 25),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget title() {
  return Container(
    margin: EdgeInsets.only(
      top: 60,
    ),
    child: Text(
      'Big Bonus 🎉',
      style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
    ),
  );
}

Widget subTitle() {
  return Container(
    margin: EdgeInsets.only(
      top: 10,
    ),
    child: Text(
      'We give you early credit so that\nyou can buy a flight ticket',
      style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
      textAlign: TextAlign.center,
    ),
  );
}

Widget startButton(BuildContext context) {
  return CustomButton(
      title: 'Start Fly Now',
      width: 220,
      height: 55,
      margin: EdgeInsets.only(
        top: 60,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/main');
      });
}
