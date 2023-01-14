import 'package:flutter/material.dart';
import 'package:utmexpress/constants/style.dart';

class FilterButton extends StatefulWidget {
  Function function;

  FilterButton({super.key, required this.function});

  @override
  State<FilterButton> createState() => _MapScreenLocation();
}

class _MapScreenLocation extends State<FilterButton> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: FloatingActionButton(
        backgroundColor: maroon,
        onPressed: () async {
          await widget.function();
        },
        child: const Icon(Icons.filter_list),
      ),
    );
  }
}