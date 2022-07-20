import 'package:flutter/material.dart';
import 'package:rehab_app/model/constants.dart';
import 'package:rehab_app/views/widgets/svg_icons.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 194, 183, 183), width: 2.5),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today's Progress",
                style: kheading1,
              ),
              const Text(
                '50%',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 45, 83, 210)),
              )
            ],
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: LinearProgressIndicator(
              value: .5,
              color: kpercentColor,
              backgroundColor: const Color(0xffc4c4c4),
              //TODO Heigh
              minHeight: 7,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: tickSvg,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Completed\n$completedSession Sessions',
                    style: kstatus,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: arrowSvg,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Pending\n$pendingSession Sessions',
                    style: kstatus,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
