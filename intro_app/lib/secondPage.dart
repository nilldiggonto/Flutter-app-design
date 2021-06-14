import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Second Page',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
