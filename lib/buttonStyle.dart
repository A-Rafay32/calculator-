import "package:flutter/material.dart";

class buttonStyle extends StatelessWidget {
  ButtonStyle upperButton = ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(Color.fromRGBO(124, 153, 149, 1)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      )));

  ButtonStyle sideButton = ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(Color.fromRGBO(242, 150, 2, 1)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      )));
  ButtonStyle normal = ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(Color.fromRGBO(55, 53, 53, 1)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      )));

  buttonStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}
