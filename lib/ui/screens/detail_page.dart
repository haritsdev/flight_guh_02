import 'package:airplane/models/destination_model.dart';
import 'package:intl/intl.dart';

import '../../shared/theme.dart';
import '../../ui/widgets/custom_button.dart';
import '../../ui/widgets/interest_item.dart';
import '../../ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final DestinationModel destinations;
  const DetailPage({Key? key, required this.destinations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            backgroundImage(context),
            customShadow(context),
            content(context),
            bookBottom(context),
          ],
        ));
  }

  Widget backgroundImage(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5 - 20,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(destinations.imageUrl))),
    );
  }

  Widget customShadow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      height: 270,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            kWhiteColor.withOpacity(0),
            Colors.black.withOpacity(1),
          ])),
    );
  }

  Widget content(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5 - 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //NOTE EMBLEM
                Container(
                  width: 108,
                  height: 24,
                  margin: EdgeInsets.only(
                      top: 30, left: defaultMargin, right: defaultMargin),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_emblem.png'))),
                ),

                //NOTE CONTAINER TITLE
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              destinations.name,
                              style: whiteTextStyle.copyWith(
                                  fontSize: 24, fontWeight: semibold),
                            ),
                            Text(
                              destinations.city,
                              style: whiteTextStyle.copyWith(
                                  fontSize: 16, fontWeight: light),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 2),
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icon_star.png'))),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            destinations.rating.toString(),
                            style: whiteTextStyle.copyWith(fontWeight: medium),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
          // NOTE DESCRIPTION CONTAINER
          ,
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5 + 20,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //ABOUT
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: blackTextStyle.copyWith(),
                  ),

                  //NOTE PHOTOS
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      PhotoItem(
                        imageUrl: 'assets/image_photo1.png',
                      ),
                      PhotoItem(
                        imageUrl: 'assets/image_photo2.png',
                      ),
                      PhotoItem(
                        imageUrl: 'assets/image_photo3.png',
                      )
                    ],
                  ),

                  //NOTE INTEREST
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      InterestItem(
                        text: 'Kids Park',
                      ),
                      InterestItem(
                        text: 'City Museum',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InterestItem(
                        text: 'Honor Bridge',
                      ),
                      InterestItem(
                        text: 'Central Mall',
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bookBottom(BuildContext context) {
    return Positioned(
      left: defaultMargin,
      right: defaultMargin,
      bottom: defaultMargin,
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    NumberFormat.currency(
                            locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                        .format(destinations.price),
                    style:
                        blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Per orang',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
            ),
            //NOTE BOOK BBUTTON
            CustomButton(
              title: 'Book Now',
              onPressed: () {
                Navigator.pushNamed(context, '/choose-seat');
              },
              width: 150,
            )
          ],
        ),
      ),
    );
  }
}
