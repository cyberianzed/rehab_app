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
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
            Color.fromARGB(255, 56, 65, 199),
            Color.fromARGB(159, 0, 140, 255)
          ])),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: height / 6,
                width: width / 2.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Knee Rehab\nProgramme",
                      style: TextStyle(
                          fontSize: fontSize(22),
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          letterSpacing: .7),
                    ),
                    //const SizedBox(height: 15),
                    Text(
                      "Mon,Thu,Sat\n3 Sessions/day",
                      style: TextStyle(
                          fontSize: fontSize(16), color: Colors.white),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    SizedBox(
                      height: 27,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0, //elevation of button
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(10)),

                          primary: Colors.white,
                          onPrimary: const Color.fromARGB(255, 10, 96, 243),
                        ),
                        child: const Text('Left Shoulder'),
                      ),
                    )
                  ],
                ),
              )),
          Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                height: height / 20,
                width: width / 1.9,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Assigned By",
                      style: TextStyle(
                          fontSize: fontSize(18),
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      "Jane Doe",
                      style: TextStyle(
                          fontSize: fontSize(17), color: Colors.white),
                    )
                  ],
                ),
              )),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
                height: height / 20,
                width: width / 1.9,
                child: Image.asset(
                  'assets/1.png',
                  fit: BoxFit.fill,
                )),
          ),
        ],
      ),
    );
  }
}
