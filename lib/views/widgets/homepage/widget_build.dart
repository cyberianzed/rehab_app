import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rehab_app/model/constants.dart';

import 'homepage_button.dart';

String time = DateFormat("hh:mm a").format(DateTime.now());

Widget checkCard({required int sessionNumber, required int index}) {
  if (sessionNumber >= index) {
    if (sessionNumber > index) {
      return Column(
        children: [
          const HomePageButton(),
          const Text('Performed At'),
          Text(time),
        ],
      );
    } else {
      //if sessionNumber = index
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        RawMaterialButton(
          onPressed: () {},
          elevation: 0.0,
          fillColor: const Color(0xfff2c219),
          constraints: const BoxConstraints(minHeight: 30, minWidth: 90),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: const Text(
            'Performed',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Text('Enter Pain Score'),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RawMaterialButton(
              onPressed: () {},
              elevation: 0.0,
              fillColor: Colors.blue,
              constraints: const BoxConstraints(minWidth: 5),
              shape: const CircleBorder(),
              child: const Icon(
                Icons.rotate_left,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            RawMaterialButton(
              onPressed: () {},
              elevation: 0.0,
              fillColor: const Color(0xffe4e4e4),
              // padding: const EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: const Text(
                ' Retry ',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        )
      ]);
    }
  } else {
    //if sessionNumber < index
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RawMaterialButton(
          onPressed: () {},
          elevation: 0.0,
          fillColor: kblueColor,
          constraints: const BoxConstraints(minWidth: 5),
          shape: const CircleBorder(),
          child: const Icon(
            Icons.play_arrow,
            size: 25.0,
            color: Colors.white,
          ),
        ),
        RawMaterialButton(
          onPressed: () {},
          elevation: 0.0,
          fillColor: const Color(0xffe4e4e4),
          // padding: const EdgeInsets.all(15.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: const Text(
            ' Start ',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
