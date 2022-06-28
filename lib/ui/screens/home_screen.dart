import 'package:flight_guh_02/shared/theme.dart';
import 'package:flight_guh_02/ui/widgets/destination_card.dart';
import 'package:flight_guh_02/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [header(), popularDestinations(), newDestinations()],
    );
  }

  Widget header() {
    return Container(
      margin:
          EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 25),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 195,
                  child: Text(
                    'Howdy,\nTeguh Muhammad Harits',
                    maxLines: 2,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle.copyWith(
                        fontSize: 23, fontWeight: semibold),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to fly today?',
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                  'assets/image_profile.png',
                ))),
          )
        ],
      ),
    );
  }

  Widget popularDestinations() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
                title: 'Lake Ciliwung',
                location: 'Tanggerang',
                imageUrl: 'assets/image_destination1.png'),
            DestinationCard(
                title: 'White Houses',
                location: 'Spain',
                imageUrl: 'assets/image_destination2.png'),
            DestinationCard(
                title: 'Hill Heyo',
                location: 'Monaco',
                imageUrl: 'assets/image_destination3.png'),
            DestinationCard(
                title: 'Menarra',
                location: 'Japan',
                imageUrl: 'assets/image_destination4.png')
          ],
        ),
      ),
    );
  }

  Widget newDestinations() {
    return Container(
      margin: EdgeInsets.only(
          top: 25, left: defaultMargin, right: defaultMargin, bottom: 140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New this year',
            style: blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
          ),
          DestinationTile(
            name: 'Danau Berata',
            city: 'Singaraja',
            imageUrl: 'assets/image_destination6.png',
            rating: 4.5,
          ),
          DestinationTile(
            name: 'Danau Berata',
            city: 'Singaraja',
            imageUrl: 'assets/image_destination6.png',
            rating: 4.5,
          ),
          DestinationTile(
            name: 'Sydney Opera',
            city: 'Australia',
            imageUrl: 'assets/image_destination5.jpg',
            rating: 4.7,
          )
        ],
      ),
    );
  }
}
