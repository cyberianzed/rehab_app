import 'package:flutter/cupertino.dart';
import 'package:rehab_app/model/constants.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Practice Page',
        style: kheading,
      ),
    );
  }
}
