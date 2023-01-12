import 'package:flutter/material.dart';

class HomeError extends StatelessWidget {
  const HomeError({Key? key, required this.errormessage}) : super(key: key);
  final String errormessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(errormessage)),
    );
  }
}
