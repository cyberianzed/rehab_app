import 'package:flutter/cupertino.dart';
import 'package:rehab_app/model/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: kheading,
      ),
    );
  }
}