import 'package:flutter/material.dart';
import 'package:rehab_app/views/widgets/homepage/widget_build.dart';

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
              children: [const Icon(Icons.access_time_rounded), Text(time)],
            ),
            Row(
              children: [const Icon(Icons.calendar_today_outlined), Text(date)],
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
