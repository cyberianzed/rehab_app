import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:rehab_app/model/constants.dart';
import 'package:rehab_app/viewmodel/my_controller.dart';
import 'package:rehab_app/views/widgets/rehabpage/history_card.dart';
import 'package:rehab_app/views/widgets/rehabpage/programme_card.dart';
import '../widgets/rehabpage/custom_listtile.dart';

class RehabPage extends StatelessWidget {
  const RehabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rehab Programme',
              style: kheading1,
            ),
            const ProgrammeCard(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'History',
                    style: kheading1,
                  ),
                  const Icon(
                    Icons.filter_alt,
                    size: 30,
                  ),
                ],
              ),
            ),
            const HistoryCard(),
            GetBuilder<MyController>(
              builder: (controller) => ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: mycontroller.sessionNumber,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return CustomListTile(
                      index: index,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
