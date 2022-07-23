import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:rehab_app/model/constants.dart';
import 'package:rehab_app/viewmodel/my_controller.dart';

class DLines extends StatelessWidget {
  final int index;
  const DLines({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 160,
      child: Stack(
        children: [
          Align(
            child: (mycontroller.sessionNumber > index)
                ? Icon(
                    Icons.check_circle,
                    size: 27,
                    color: kblueColor,
                  )
                : const Icon(
                    Icons.circle_outlined,
                    size: 27,
                    color: Color.fromARGB(255, 160, 157, 157),
                  ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 3),
              child: DottedLine(
                direction: Axis.vertical,
                lineThickness: 4,
                dashLength: 15,
                dashGapLength: 5.2,
                dashRadius: 12,
                dashColor: (mycontroller.sessionNumber > index)
                    ? kblueColor
                    : const Color.fromARGB(93, 113, 112, 112),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
