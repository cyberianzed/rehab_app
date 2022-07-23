import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';
import '../../viewmodel/my_controller.dart';

final database = FirebaseDatabase.instance.ref();
final sessionRef = database.child('sessions/');

void createData() {
  String date = DateFormat("dd-MM-yyyy").format(DateTime.now());
  String time = DateFormat("hh:mm:ss a").format(DateTime.now());
  database.child('sessions/$date').update({time: 'Session${mycontroller.sessionNumber}'});
}



// void readData(){
//   databaseReference.once().then((DataSnapshot snapshot) {
//     print('Data : ${snapshot.value}');
//   });
// }