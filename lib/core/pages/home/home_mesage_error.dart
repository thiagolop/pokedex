import 'package:flutter/material.dart';

class HomeMesageError extends StatelessWidget {
  const HomeMesageError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(child: Text('NO STATUS', style: TextStyle(fontSize: 50))),
    );
  }
}
