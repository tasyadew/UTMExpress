import 'package:flutter/material.dart';
import 'package:utmexpress/constants/style.dart';

class SearchField extends StatelessWidget {
  final String text;

  const SearchField({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double currWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: SizedBox(
          width: currWidth,
          height: 50,
          child: Container(
            alignment: Alignment.centerLeft,
            //constraints: const BoxConstraints(maxWidth: 2000),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                blurRadius: 7,
              )],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
