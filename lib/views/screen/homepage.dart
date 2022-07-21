import 'package:flutter/material.dart';
import 'package:rehab_app/views/widgets/homepage/session_card.dart';
import '../../model/constants.dart';
import '../widgets/homepage/progress_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 50,
        width: 300,
        child: RawMaterialButton(
          //TODO db
          onPressed: () {},
          elevation: 0.0,
          fillColor: kblueColor,
          //constraints: const BoxConstraints(minHeight: 55),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 35,
              ),
              SizedBox(width: 12),
              Text(
                'Start Session',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Good Morning\nJane',
              style: kheading,
            ),
            const ProgressCard(),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 30,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext ctxt, int index) {
                  return SessionCard(
                    sessionNumber: 2,
                    index: index,
                  );
                }),
          ]),
        ),
      ),
    );
  }
}
