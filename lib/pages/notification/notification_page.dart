import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
import '../../widgets/title_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleCard(text: "Notifications"),
        ],
      ),
    );
  }
}
