import 'package:flutter/material.dart';

class Vista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.toString()),
      ),
    );
  }
}
