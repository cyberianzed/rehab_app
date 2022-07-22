import 'package:flutter/material.dart';
import 'package:rehab_app/views/widgets/homepage/session_card.dart';
import '../../model/constants.dart';
import '../widgets/homepage/floating_button.dart';
import '../widgets/homepage/progress_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: const SizedBox(
        height: 50,
        width: 300,
        child: FloatingButton(),
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
                    sessionNumber: sessionNumber,
                    index: index,
                  );
                }),
          ]),
        ),
      ),
    );
  }
}
