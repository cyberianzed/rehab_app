import 'package:flutter/material.dart';

import '../../../model/constants.dart';
import '../../../model/database/database.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () async {
        sessionNumber++;
        createData();
      },
      elevation: 0.0,
      fillColor: kblueColor,
      //constraints: const BoxConstraints(minHeight: 55),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
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
    );
  }
}
