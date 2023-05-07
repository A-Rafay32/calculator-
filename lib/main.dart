import 'dart:ffi';
import "size.dart";

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import "buttonStyle.dart";
import './buttons.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "calc",

      theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          iconTheme: IconThemeData(color: Colors.amber),
          iconButtonTheme: IconButtonThemeData(
              style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color.fromRGBO(55, 53, 53, 1)),
          ))),

      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Calc(),
    );
  }
}

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  final double p = 8.0;
  TextStyle button = TextStyle(fontSize: 23);

  final double _height = 70;
  final double _width = 70;
  late TextEditingController _controller = TextEditingController();

  final List<dynamic> input = [];

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  String exp = "";
  String opr = '';

  void display(String _text) {
    String t = _text;
    setState(() {
      _controller.text = _controller.text + _text;
      // input.add(_text);
      // print("added");
      // print(input[input.length - 1]);
      // for (int i = 0; i < input.length; ++i)
      // print(input[i]);
      exp = exp + t;
    });
    for (int i = 0; i < exp.length; i++) {
      if (exp[i] == "+" || exp[i] == "-" || exp[i] == "x" || exp[i] == "/")
        opr = exp[i];
    }
    print("operator : $opr");
    print("exp : $exp");
  }

  void clear() {
    String x = "";
    for (int i = 0; i < exp.length - 1; ++i) {
      x = x + exp[i];
    }
    print(x);

    setState(() {
      exp = x;
      _controller = TextEditingController();
      _controller.text = _controller.text + x;
    });
  }

  void AC() {
    setState(() {
      _controller.clear();
      exp = "";
      _result.clear();
      input.clear();
    });
  }

  List<dynamic> _result = [];

  String formatList() {
    String str = '';
    for (int i = 0; i < exp.length; ++i) {
      str = str + exp[i];
    }
    return str + " = " + "${_exp[0]}";
  }

  late List<dynamic> _exp;
  late dynamic result;
  dynamic int1;
  dynamic int2;
  late String str;
  void calculate(String operator) {
    if (operator == "+") {
      if (exp.contains(".")) {
        display("+");
        _exp = exp.split("x");
        print("_exp : $_exp");
        int1 = double.parse(_exp[0]);
        int2 = double.parse(_exp[1]);
        result = int1 + int2;
        _result.add(result);
        _exp.clear();
        _exp.add(result.toString());
        exp = "";
        exp = exp + _exp[0];

        print("_exp : ${_exp}");

        print("Result : $result");
      } else {
        display("+");
        _exp = exp.split("x");
        print("_exp : $_exp");
        int1 = int.parse(_exp[0]);
        int2 = int.parse(_exp[1]);
        result = int1 + int2;
        _result.add(result);
        _exp.clear();
        _exp.add(result.toString());
        exp = "";
        exp = exp + _exp[0];

        print("_exp : ${_exp}");

        print("Result : $result");
      }
    }
    if (operator == "-") {
      if (exp.contains(".")) {
        display("-");
        _exp = exp.split("x");
        print("_exp : $_exp");
        int1 = double.parse(_exp[0]);
        int2 = double.parse(_exp[1]);
        result = int1 - int2;
        _result.add(result);
        _exp.clear();
        _exp.add(result.toString());
        exp = "";
        exp = exp + _exp[0];

        print("_exp : ${_exp}");

        print("Result : $result");
      } else {
        display("-");
        _exp = exp.split("x");
        print("_exp : $_exp");
        int1 = int.parse(_exp[0]);
        int2 = int.parse(_exp[1]);
        result = int1 - int2;
        _result.add(result);
        _exp.clear();
        _exp.add(result.toString());
        exp = "";
        exp = exp + _exp[0];

        print("_exp : ${_exp}");

        print("Result : $result");
      }
    }
    if (operator == "x") {
      if (exp.contains(".")) {
        display("x");
        _exp = exp.split("x");
        print("_exp : $_exp");
        int1 = double.parse(_exp[0]);
        int2 = double.parse(_exp[1]);
        result = int1 * int2;
        _result.add(result);
        _exp.clear();
        _exp.add(result.toString());
        exp = "";
        exp = exp + _exp[0];

        print("_exp : ${_exp}");

        print("Result : $result");
      } else {
        display("x");
        _exp = exp.split("x");
        print("_exp : $_exp");
        int1 = int.parse(_exp[0]);
        int2 = int.parse(_exp[1]);
        result = int1 * int2;
        _result.add(result);
        _exp.clear();
        _exp.add(result.toString());
        exp = "";
        exp = exp + _exp[0];

        print("_exp : ${_exp}");

        print("Result : $result");
      }
    }
    if (operator == "/") {
      if (exp.contains(".")) {
        display("/");
        _exp = exp.split("/");
        print("_exp : $_exp");
        int1 = double.parse(_exp[0]);
        int2 = double.parse(_exp[1]);
        result = int1 / int2;
        _result.add(result);
        _exp.clear();
        _exp.add(result.toString());
        exp = "";
        exp = exp + _exp[0];

        print("_exp : ${_exp}");
      } else {
        display("/");
        _exp = exp.split("/");
        print("_exp : $_exp");
        int1 = int.parse(_exp[0]);
        int2 = int.parse(_exp[1]);
        result = int1 / int2;
        _result.add(result);
        _exp.clear();
        _exp.add(result.toString());
        exp = "";
        exp = exp + _exp[0];

        print("_exp : ${_exp}");
      }
    }
    if (operator == "%") {
      if (exp.contains(".")) {
        display("%");
        _exp = exp.split("%");
        print("_exp : $_exp");
        int1 = double.parse(_exp[0]);
        result = int1 / 100;
        _result.add(result);
        _exp.clear();
        _exp.add(result.toString());
        exp = "";
        exp = exp + _exp[0];

        print("_exp : ${_exp}");
      } else {
        display("%");
        _exp = exp.split("%");
        print("_exp : $_exp");
        int1 = int.parse(_exp[0]);
        result = int1 / 100;
        _result.add(result);
        _exp.clear();
        _exp.add(result.toString());
        exp = "";
        exp = exp + _exp[0];

        print("_exp : ${_exp}");
      }
    }

    setState(() {
      String str = _exp[0].toString();
      _controller = TextEditingController(text: "$str");
    });
  }

  void calcInt(String operator) {
    display("+");
    // try {
    _exp = exp.split("+");
    print("_exp : $_exp");

    int1 = int.parse(_exp[0]);
    int2 = int.parse(_exp[1]);

    if (operator == "+") result = int1 + int2;
    if (operator == "-") result = int1 - int2;
    if (operator == "/") result = int1 / int2;
    if (operator == "*") result = int1 * int2;

    _result.add(result);
    _exp.clear();
    _exp.add(result.toString());
    exp = "";

    exp = exp + _exp[0];

    print("_exp : ${_exp}");
  }

  void calc_double(String operator) {
    print("_exp : $_exp");
    int1 = double.parse(_exp[0]);
    int2 = double.parse(_exp[1]);

    if (operator == "+") result = int1 + int2;
    if (operator == "-") result = int1 - int2;
    if (operator == "/") result = int1 / int2;
    if (operator == "*") result = int1 * int2;

    _result.add(result);
    _exp.clear();
    _exp.add(result.toString());
    exp = "";
    exp = exp + _exp[0];

    print("_exp : ${_exp}");
  }

  void calcSubSys(String operator) {
    if (exp.contains(".")) {
      int1 = double.parse(_exp[0]);
      int2 = double.parse(_exp[1]);
    } else {
      int1 = int.parse(_exp[0]);
      int2 = int.parse(_exp[1]);
    }
    display("-");
    _exp = exp.split("-");
    print("_exp : $_exp");

    if (operator == "+") {
      result = int1 + int2;
      display("+");
    }
    if (operator == "-") {
      result = int1 - int2;
      display("-");
    }
    if (operator == "x") {
      result = int1 - int2;
      display("x");
    }
    if (operator == "/") {
      result = int1 / int2;
      display("/");
    }

    _result.add(result);
    _exp.clear();
    _exp.add(result.toString());
    exp = "";
    exp = exp + _exp[0];
    print("_exp : ${_exp}");

    print("Result : $result");
  }

  void equals() {
    setState(() {
      String str = _result[_result.length].toString();
      _controller = TextEditingController(text: "$str");
    });
  }

  void empty() {
    input.clear();
    exp = "";
  }
  // int getIntValue() {
  //   int value = int.tryParse(_controller.text);
  //   return value ?? 0; // return 0 if input is invalid or empty
  // }r

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
          child: Column(children: [
        SizedBox(
            height: size.height * 0.19,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextField(
                controller: _controller,
                onSubmitted: ((value) {
                  input.add(value);
                  if (input != null) {
                    print("added");
                    for (int i = 0; i < input.length; ++i) print(input[i]);
                  } else
                    print("not added ");
                }),
                style: TextStyle(fontSize: 42),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(p),
                ),
              ),
            )),
        SizedBox(
            height: size.height * 0.15,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${exp}",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  )
                ],
              ),
            )),

        // Container(height: 70, child: Text("${_result}")),
        Expanded(
          child: Container(),
        ),
        Divider(
          height: 20,
          thickness: 0.6,
          indent: 10,
          endIndent: 10,
          color: Colors.white,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            width: double.infinity,
            child: Table(
              children: [
                TableRow(children: [
                  Button("AC", buttonStyle().upperButton, (() => AC())),
                  Button("+/-", buttonStyle().upperButton, () {}),
                  Button2(buttonStyle().upperButton, () => clear()),
                  Button("/", buttonStyle().sideButton, () => calculate("/")),
                ]),
                TableRow(children: [
                  Button("7", buttonStyle().normal, () => display("7")),
                  Button("8", buttonStyle().normal, () => display("8")),
                  Button("9", buttonStyle().normal, () => display("9")),
                  Button("x", buttonStyle().sideButton, () => calculate("x")),
                ]),
                TableRow(children: [
                  Button("4", buttonStyle().normal, () => display("4")),
                  Button("5", buttonStyle().normal, () => display("5")),
                  Button("6", buttonStyle().normal, () => display("6")),
                  Button("-", buttonStyle().sideButton, () => calculate("-")),
                ]),
                TableRow(children: [
                  Button("1", buttonStyle().normal, () => display("1")),
                  Button("2", buttonStyle().normal, () => display("2")),
                  Button("3", buttonStyle().normal, () => display("3")),
                  Button("+", buttonStyle().sideButton, () => calculate("+")),
                ]),
                TableRow(children: [
                  Zero(buttonStyle().normal, () => display("0")),
                  Button("%", buttonStyle().normal, () => calculate("%")),
                  Button(".", buttonStyle().normal, () => display(".")),
                  Button("=", buttonStyle().normal, () => calculate(opr)),
                ])
              ],
            ),
          ),
        )
      ])),
    );
  }
}
