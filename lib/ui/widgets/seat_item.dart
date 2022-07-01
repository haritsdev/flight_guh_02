import 'package:airplane/cubit/seat_cubit.dart';

import '../../shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  final String id;
  final bool isAvailable;
  const SeatItem({Key? key, required this.id, this.isAvailable = true})
      : super(key: key);

//NOTE: 0 Available
//1 Selected
//2 UnAvailable
  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);
    backgroundColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailableColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            overflow: TextOverflow.ellipsis,
            style: whiteTextStyle.copyWith(
              fontWeight: semibold,
            ),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: backgroundColor(),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: borderColor())),
          child: child()),
    );
  }
}
