import 'package:flutter/material.dart';
import 'package:rehab_app/model/constants.dart';

class ProgrammeCard extends StatelessWidget {
  const ProgrammeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color.fromARGB(255, 56, 65, 199),
                  Color.fromARGB(159, 0, 140, 255)
                ])),
        child: Stack(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Knee Rehab\nProgramme",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: .7),
                ),
                //const SizedBox(height: 15),
                const Text(
                  "Mon,Thu,Sat\n3 Sessions/day",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 7),
                  child: SizedBox(
                    height: 27,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0, //elevation of button

                        primary: Colors.white,
                        onPrimary: const Color.fromARGB(255, 10, 96, 243),
                      ),
                      child: const Text('Left Shoulder'),
                    ),
                  ),
                ),
                const Text(
                  "Assigned By",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const Text(
                  "Jane Doe",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                )
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    pcImg,
                    fit: BoxFit.fill,
                  ),
                ),
              ))
        ]));
  }
}
