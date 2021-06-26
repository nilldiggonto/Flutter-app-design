import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  // const CustomInput({Key? key}) : super(key: key);
  Icon? fieldIcon;
  String? hintText;

  CustomInput(this.fieldIcon, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: fieldIcon,
            ),
            Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                // border: InputBorder.none,
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
