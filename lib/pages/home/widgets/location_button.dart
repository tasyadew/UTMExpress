import 'package:flutter/material.dart';
import 'package:utmexpress/constants/style.dart';

class CurrentLocationButton extends StatefulWidget {
  Function function;

  CurrentLocationButton({super.key, required this.function});

  @override
  State<CurrentLocationButton> createState() => _MapScreenLocation();
}

class _MapScreenLocation extends State<CurrentLocationButton> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: FloatingActionButton(
        backgroundColor: maroon,
        onPressed: () async {
          await widget.function();
        },
        child: const Icon(Icons.location_searching),
      ),
    );
  }
}