import '../../shared/theme.dart';
import '../../ui/widgets/custom_button.dart';
import '../../ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeat extends StatelessWidget {
  const ChooseSeat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            seatStatus(),
            selectSeat(),
            checkoutButton(context)
          ],
        ));
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Text(
        'Select Your\nFavorite Seat',
        style: blackTextStyle.copyWith(fontWeight: semibold, fontSize: 24),
      ),
    );
  }

  Widget seatStatus() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Row(
        children: [
          //NOTE : AVAILABLE
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_available.png'))),
          ),
          Text(
            'Available',
            style: blackTextStyle,
          ),
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(left: 10, right: 5),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_selected.png'))),
          ),
          Text(
            'Selected',
            style: blackTextStyle,
          ),
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(left: 10, right: 5),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_unavailable.png'))),
          ),
          Text(
            'Unavaliable',
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }

  Widget selectSeat() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Column(
        children: [
          //SEAT INDICATOR
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
            ],
          )

          //NOTE SEAT 1
          ,
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 2,
                ),
                SeatItem(status: 2),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '1',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                ),
              ],
            ),
          ),

          //NOTE SEAT 2

          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                ),
                SeatItem(status: 0),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '2',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                ),
              ],
            ),
          ),

          //NOTE SEAT 3

          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 1,
                ),
                SeatItem(status: 1),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '3',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
          )

          //NOTE SEAT 4
          ,
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                ),
                SeatItem(status: 2),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '4',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
          )

          //NOTE SEAT 4
          ,
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                ),
                SeatItem(status: 0),
                Container(
                  width: 45,
                  height: 45,
                  child: Center(
                    child: Text(
                      '5',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
          ),

          //NOTE YOUR SEAT
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Your Seat',
                    style: greyTextStyle.copyWith(fontWeight: light)),
                Text('A3, B3',
                    style: blackTextStyle.copyWith(
                        fontWeight: semibold, fontSize: 16))
              ],
            ),
          ),

          //NOTE TOTAL
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total', style: greyTextStyle.copyWith(fontWeight: light)),
                Text('IDR 5.400.000',
                    style: purpleTextStyle.copyWith(
                        fontWeight: semibold, fontSize: 16))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget checkoutButton(BuildContext context) {
    return CustomButton(
      title: 'Continue to Checkout',
      onPressed: () {
        Navigator.pushNamed(context, '/checkout');
      },
      margin: EdgeInsets.only(top: 30, bottom: 46),
    );
  }
}
