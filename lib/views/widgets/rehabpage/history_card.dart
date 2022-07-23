import 'package:flutter/material.dart';
import 'package:rehab_app/model/constants.dart';
import 'package:rehab_app/views/widgets/svg_icons.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      elevation: 0,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            const Text('Total Sessions'),
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: dumbellSvg,
                ),
                Text(
                  ' $totalsessions',
                  style: kheading1,
                ),
              ],
            ),
          ]),
        ),
        const SizedBox(
          height: 30,
          //width: 20,
          child: VerticalDivider(
            thickness: 1,
            color: Color.fromARGB(255, 159, 159, 159),
          ),
        ),
        Column(children: [
          const Text('Total Time'),
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: hourglassSvg,
              ),
              Text(
                ' $totalsessions',
                style: kheading1,
              ),
            ],
          ),
        ]),
      ]),
    );
  }
}
