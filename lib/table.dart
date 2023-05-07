import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import "package:flutter/material.dart";
import 'buttonStyle.dart';
import 'buttons.dart';
import 'main.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          Button("AC", buttonStyle().upperButton, (() => _CalcState.AC())),
          Button("+/-", buttonStyle().upperButton, func),
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
    );
  }
}
