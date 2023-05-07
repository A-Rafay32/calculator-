import 'package:flutter/material.dart';
import "size.dart";

class Button extends StatelessWidget {
  final double p = 8.0;
  TextStyle button = TextStyle(fontSize: 25, color: Colors.white);

  final double _height = 70;
  final double _width = 70;
  final VoidCallback onPressed;
  // final Color = Color.fromRGBO(124, 153, 149, 1)  ;
  late final String text;

  late ButtonStyle style;

  Button(
    @required this.text,
    @required this.style,
    @required this.onPressed,
  );

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.all(p),
      height: _height,
      width: _width,
      child: ElevatedButton(
        style: style,
        child: Text(text, style: button),
        onPressed: onPressed,
      ),
    );
  }
}

class Zero extends StatelessWidget {
  final double p = 8.0;
  TextStyle button = TextStyle(fontSize: 23, color: Colors.white);

  final double _height = 70;
  final double _width = 500;
  final VoidCallback onPressed;
  final String text = "0";

  late ButtonStyle style;

  Zero(this.style, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(p),
      height: _height,
      width: _width,
      child: ElevatedButton(
        style: style,
        child: Text(text, style: button),
        onPressed: onPressed,
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  final double p = 8.0;
  TextStyle button = TextStyle(fontSize: 28, color: Colors.white);

  final double _height = 70;
  final double _width = 70;
  final VoidCallback onPressed;
  // final Color = Color.fromRGBO(124, 153, 149, 1)  ;
  Icon _icon = Icon(
    Icons.arrow_back_sharp,
    color: Colors.white,
    size: 28,
  );
  late ButtonStyle style;

  Button2(
    // this._icon,
    this.style,
    this.onPressed,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(p),
      height: _height,
      width: _width,
      child: ElevatedButton(
        style: style,
        child: _icon,
        onPressed: onPressed,
      ),
    );
  }
}
