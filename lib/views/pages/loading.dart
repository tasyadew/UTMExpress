import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:utmexpress/views/shared/color.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.maroon[400],
      body: SafeArea(
        child: Center(
          child: SpinKitFadingCube(
            color: MyColor.amber[100],
            size:50.0,
          ),
        ),
      ),
    );
  }
}
