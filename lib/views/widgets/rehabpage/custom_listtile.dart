import 'package:flutter/material.dart';

import '../../../model/constants.dart';

class CustomListTile extends StatelessWidget {
  final int index;

  const CustomListTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(
              rehabpageImg[index % 2],
              fit: BoxFit.fill,
            )),
        title: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.access_time_rounded),
                Text('10:20am')
              ],
            ),
            Row(
              children: const [
                Icon(Icons.calendar_today_outlined),
                Text('20-11-2020')
              ],
            )
          ],
        ),
        trailing: TextButton(
            onPressed: () {},
            child: Text(
              'View Results',
              style: kstatus,
            )),
        //selected: true,
      ),
    );
  }
}
