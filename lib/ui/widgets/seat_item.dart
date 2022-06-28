import 'package:flight_guh_02/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  final int status;
  const SeatItem({Key? key, required this.status}) : super(key: key);

//NOTE: 0 Available
//1 Selected
//2 UnAvailable
  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;

        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;

        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (status) {
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(fontWeight: semibold),
            ),
          );
          ;
        case 0:
          return SizedBox();
        case 2:
          return SizedBox();

        default:
          return SizedBox();
      }
    }

    return Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: backgroundColor(),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: borderColor())),
        child: child());
  }
}
