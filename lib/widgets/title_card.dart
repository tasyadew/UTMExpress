import 'package:flutter/material.dart';
import 'package:utmexpress/constants/style.dart';

class TitleCard extends StatelessWidget {
  final String text;

  const TitleCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double currWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SizedBox(
        width: (currWidth >= 850) ? 850 : currWidth,
        height: 50,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 2000),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: maroon,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
