import 'package:flutter/material.dart';

import '../../../model/size.dart';

class ProgrammeCard extends StatelessWidget {
  const ProgrammeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 200,
      width: double.infinity,
      color: Colors.blueAccent,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                height: height / 14,
                width: width / 1.9,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Assigned By",
                      style: TextStyle(
                          fontSize: fontSize(18), fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Jane Doe",
                      style: TextStyle(fontSize: fontSize(15)),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
