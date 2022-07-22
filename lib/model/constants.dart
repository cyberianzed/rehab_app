import 'package:flutter/material.dart';

int sessionNumber = 0;
var pendingSession = 30 - sessionNumber;

const String arrowPath = 'assets/arrow.svg';
const String tickPath = 'assets/tick.svg';
const String dumbellPath = 'assets/dumbbell.svg';
const String hourglassPath = 'assets/hourglass.svg';

var kblueColor = const Color.fromARGB(255, 45, 83, 210);

var kheading = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
var kheading1 = const TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
var kpercent =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: kblueColor);
var kstatus = const TextStyle(
    fontSize: 15, fontWeight: FontWeight.w300, color: Colors.black);

const List<String> sessioncardImg = <String>[
  'assets/1.png',
  'assets/2.png',
  'assets/3.png',
  'assets/4.png',
];

const List<String> rehabpageImg = <String>[
  'assets/a.png',
  'assets/b.png',
];
