import 'package:flutter/material.dart';
import 'package:rehab_app/model/constants.dart';
import 'package:rehab_app/views/widgets/homepage/progress_card.dart';
import 'package:rehab_app/views/widgets/homepage/session_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Morning\nJane',
            style: kheading,
          ),
          const ProgressCard(),
          const SessionCard(
            sessionNumber: 1,
            isCompleted: true,
          ),
        ],
      ),
    );
  }
}
