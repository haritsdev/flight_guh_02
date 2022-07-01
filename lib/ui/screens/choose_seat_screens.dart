import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/models/destination_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../shared/theme.dart';
import '../../ui/widgets/custom_button.dart';
import '../../ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeat extends StatelessWidget {
  final DestinationModel destination;
  const ChooseSeat(this.destination, {Key? key}) : super(key: key);

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
      margin: EdgeInsets.only(top: 35),
      child: Text(
        'Select Your\nFavorite Seat',
        style: blackTextStyle.copyWith(fontWeight: semibold, fontSize: 24),
      ),
    );
  }

  Widget seatStatus() {
    return Container(
      margin: EdgeInsets.only(top: 20),
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
      margin: EdgeInsets.only(top: 5),
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
                  id: 'A1',
                  isAvailable: false,
                ),
                SeatItem(id: 'B1'),
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
                  id: 'C1',
                ),
                SeatItem(
                  id: 'D1',
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
                  id: 'A2',
                ),
                SeatItem(
                  id: 'B2',
                ),
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
                  id: 'C2',
                ),
                SeatItem(
                  id: 'D2',
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
                  id: 'A3',
                ),
                SeatItem(id: 'B3'),
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
                  id: 'C3',
                ),
                SeatItem(
                  id: 'D3',
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
                  id: 'A4',
                ),
                SeatItem(id: 'B4'),
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
                  id: 'C4',
                ),
                SeatItem(
                  id: 'D4',
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
                  id: 'A5',
                ),
                SeatItem(
                  id: 'B5',
                ),
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
                  id: 'C5',
                ),
                SeatItem(
                  id: 'D5',
                ),
              ],
            ),
          ),

          //NOTE YOUR SEAT
          BlocBuilder<SeatCubit, List<String>>(
            builder: (context, state) {
              return Container(
                margin: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Your Seat',
                        style: greyTextStyle.copyWith(fontWeight: light)),
                    Container(
                      width: 150,
                      child: Expanded(
                        child: Text(state.join(', '),
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: blackTextStyle.copyWith(
                                fontWeight: semibold, fontSize: 16)),
                      ),
                    )
                  ],
                ),
              );
            },
          ),

          //NOTE TOTAL
          BlocBuilder<SeatCubit, List<String>>(
            builder: (context, state) {
              return Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',
                        style: greyTextStyle.copyWith(fontWeight: light)),
                    Text(
                      NumberFormat.currency(
                              locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                          .format(state.length * destination.price),
                      style: purpleTextStyle.copyWith(
                          fontSize: 16, fontWeight: semibold),
                    )
                  ],
                ),
              );
            },
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
