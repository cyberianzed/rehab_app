import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class DLines extends StatelessWidget {
  const DLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Align(
          alignment: Alignment.topLeft,
          child: DottedLine(
            direction: Axis.vertical,
          ),
        )
      ],
    );
  }
}
