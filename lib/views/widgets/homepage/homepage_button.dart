import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({Key? key}) : super(key: key);
  //final BoxConstraints constraints;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 0.0,
      fillColor: Colors.blue,
      //constraints: const BoxConstraints(minWidth: 35),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: const Text(
        'Completed',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
