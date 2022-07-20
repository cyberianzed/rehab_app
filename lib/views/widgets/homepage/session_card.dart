import 'package:flutter/material.dart';
import 'package:rehab_app/model/constants.dart';

class SessionCard extends StatelessWidget {
  final int sessionNumber;
  final bool isCompleted;

  const SessionCard(
      {super.key, required this.sessionNumber, required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        width: double.infinity,
        //TODO
        margin: const EdgeInsets.only(top: 10, left: 30),
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 194, 183, 183), width: 2.5),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Session $sessionNumber',
                      style: kheading1,
                    ),
                    isCompleted
                        ? RawMaterialButton(
                            onPressed: () {},
                            elevation: 0.0,
                            fillColor: Colors.blue,
                            //constraints: const BoxConstraints(minWidth: 35),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: const Text(
                              'Completed',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RawMaterialButton(
                                onPressed: () {},
                                elevation: 0.0,
                                fillColor: Colors.blue,
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
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Text(
                                  ' Start ',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          )
                  ],
                ),
                Expanded(
                    child: SizedBox(
                        height: 135,
                        width: 35,
                        child: Image.asset(
                          img1Path,
                          fit: BoxFit.fill,
                        )))
              ],
            )
          ],
        ));
  }
}
