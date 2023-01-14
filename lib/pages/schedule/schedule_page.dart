import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
import '../../widgets/title_card.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleCard(text: "Schedule"),
          SizedBox(
              width: double.infinity,
              height: 700,
              child: Image.asset('assets/img/schedule.png')
          ),
        ],
      ),
    );
  }
}
