import 'package:flutter/material.dart';
import 'package:rehab_app/model/constants.dart';
import 'package:rehab_app/model/size.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Card(
      color: Colors.grey[200],
      elevation: 0,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            const Text('Total Sessions'),
            Text(
              '16',
              style: kheading1,
            ),
          ]),
        ),
        const VerticalDivider(
          thickness: 4,
          color: Colors.red,
        ),
        Column(children: [
          const Text('Total Time'),
          Text(
            '16',
            style: kheading1,
          ),
        ]),
      ]),
    );
  }
}
