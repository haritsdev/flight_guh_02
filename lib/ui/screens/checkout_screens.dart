import 'package:flight_guh_02/shared/theme.dart';
import 'package:flight_guh_02/ui/widgets/booking_detail_item.dart';
import 'package:flight_guh_02/ui/widgets/card_pay.dart';
import 'package:flight_guh_02/ui/widgets/custom_button.dart';
import 'package:flight_guh_02/ui/widgets/custom_tac_button.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            header(),
            bookingDetails(),
            paymentDetails(),
            payNowButton(context),
            tacButton()
          ],
        ));
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        children: [
          Container(
            width: 291,
            height: 65,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_checkout.png'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semibold),
                  ),
                  Text(
                    'Tangerang',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'TLC',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semibold),
                  ),
                  Text(
                    'Ciliwung',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget bookingDetails() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //NOTE DESTINATION TILE
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image_destination1.png'))),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lake Ciliwung',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Jakarta',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    ),
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
                    '4.5',
                    style: blackTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            ],
          ),

          //NOTE BOOKING DETAILS TEXT
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
          )

          //NOTE Booking DETAILS ITEM
          ,
          BookingDetailsItem(
            title: 'Traveler',
            valueText: '2 Person',
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: 'Seat',
            valueText: 'A3, B3',
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: 'Insurance',
            valueText: 'YES',
            valueColor: kGreenColor,
          ),
          BookingDetailsItem(
            title: 'Refundable',
            valueText: 'NO',
            valueColor: kRedColor,
          ),
          BookingDetailsItem(
            title: 'VAT',
            valueText: '45%',
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: 'Price',
            valueText: 'IDR 8.500.690',
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: 'Grand Total',
            valueText: 'IDR 12.000.000',
            valueColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }

  Widget paymentDetails() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Details',
            style: blackTextStyle.copyWith(fontWeight: semibold, fontSize: 16),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                CardPay(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 80.400.000',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: semibold),
                    ),
                    Text(
                      'Current Balance',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget payNowButton(BuildContext context) {
    return CustomButton(
      title: 'Pay Now',
      onPressed: () {
        Navigator.pushNamed(context, '/success-checkout');
      },
      margin: EdgeInsets.only(top: 30),
    );
  }

  Widget tacButton() {
    return CustomTacButton(
      text: 'Terms and Conditions',
      margin: EdgeInsets.only(top: 30, bottom: 30),
    );
  }
}
