import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:rehab_app/views/widgets/homepage/widget_build.dart';
import '../../../model/constants.dart';
import '../../../viewmodel/my_controller.dart';
import '../../screen/dotted_lines.dart';

class SessionCard extends StatelessWidget {
  final int index;
  const SessionCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DLines(index: index),
        Expanded(
            child: GetBuilder<MyController>(
                builder: (controller) => Container(
                    height: 160,
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 10, left: 2, right: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 194, 183, 183),
                          width: 2.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Session ${index + 1}',
                                  style: kheading1,
                                ),
                                //checkCard(sessionNumber: sessionNumber,index: index),
                                checkCard(
                                    sessionNumber: controller.sessionNumber,
                                    index: index),
                              ],
                            ),
                            SizedBox(
                                height: 135,
                                width: 125,
                                child: Image.asset(
                                  sessioncardImg[index % 4],
                                  fit: BoxFit.fill,
                                ))
                          ],
                        )
                      ],
                    )))),
      ],
    );
  }
}
