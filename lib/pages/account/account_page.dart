import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
import '../../widgets/title_card.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleCard(text: "Account"),
          SizedBox(
            width: double.infinity,
              height: 500,
              child: Image.asset('assets/img/account.png')
          )
        ],
      ),
    );
  }
}
