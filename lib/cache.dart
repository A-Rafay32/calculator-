if (operator == "+") {
      // check for type double 
      if (exp.contains(".")) {
        
        calc_double();
        // } on FormatException catch (e) {
        //   print("Syntax Error");
      } else {
        calcInt();
        // } on FormatException catch (e) {
        //   print("Syntax Error");
      }
    }
    if (operator == "-") {
      subtract();
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


 void subtract() {

    if (exp.contains(".")) {
      int1 = double.parse(_exp[0]);
      int2 = double.parse(_exp[1]);
    }
    else{
      int1 = int.parse(_exp[0]);
      int2 = int.parse(_exp[1]);

    }   
    display("-");
    _exp = exp.split("-");
    print("_exp : $_exp");
    result = int1 - int2;
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
    }
    else{
      int1 = int.parse(_exp[0]);
      int2 = int.parse(_exp[1]);

    }   
    display("-");
    _exp = exp.split("-");
    print("_exp : $_exp");

    if ( operator == "+" ) 
      result = int1 + int2;
    if ( operator == "-" ) 
      result = int1 - int2;
    if ( operator == "/" ) 
      result = int1 / int2;
    if ( operator == "*" ) 
      result = int1 * int2;
    
    _result.add(result);
    _exp.clear();
    _exp.add(result.toString());
    exp = "";
    exp = exp + _exp[0];
    print("_exp : ${_exp}");
    

        print("Result : $result");
    } 


    
  void calcInt(String operator){
    display("+");
    // try {
    _exp = exp.split("+");
    print("_exp : $_exp");
    
    int1 = int.parse(_exp[0]);
    int2 = int.parse(_exp[1]);

    if ( operator == "+" ) 
      result = int1 + int2;
    if ( operator == "-" ) 
      result = int1 - int2;
    if ( operator == "/" ) 
      result = int1 / int2;
    if ( operator == "*" ) 
      result = int1 * int2;

    
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

    if ( operator == "+" ) 
      result = int1 + int2;
    if ( operator == "-" ) 
      result = int1 - int2;
    if ( operator == "/" ) 
      result = int1 / int2;
    if ( operator == "*" ) 
      result = int1 * int2;    

    _result.add(result);
    _exp.clear();
    _exp.add(result.toString());
    exp = "";
    exp = exp + _exp[0];
    
    print("_exp : ${_exp}");
  }

  void equals() {
    setState(() {
      String str = _result[_result.length].toString();
      _controller = TextEditingController(text: "$str");
    });
  }
   

  void subtract() {

    if (exp.contains(".")) {
      int1 = double.parse(_exp[0]);
      int2 = double.parse(_exp[1]);
    }
    else{
      int1 = int.parse(_exp[0]);
      int2 = int.parse(_exp[1]);

    }   
    display("-");
    _exp = exp.split("-");
    print("_exp : $_exp");
    result = int1 - int2;
    _result.add(result);
    _exp.clear();
    _exp.add(result.toString());
    exp = "";
    exp = exp + _exp[0];
    print("_exp : ${_exp}");
    } 


void calcInt(String operator){
    display("+");
    // try {
    _exp = exp.split("+");
    print("_exp : $_exp");
    
    int1 = int.parse(_exp[0]);
    int2 = int.parse(_exp[1]);

    if ( operator == "+" ) 
      result = int1 + int2;
    if ( operator == "-" ) 
      result = int1 - int2;
    if ( operator == "/" ) 
      result = int1 / int2;
    if ( operator == "*" ) 
      result = int1 * int2;

    
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

    if ( operator == "+" ) 
      result = int1 + int2;
    if ( operator == "-" ) 
      result = int1 - int2;
    if ( operator == "/" ) 
      result = int1 / int2;
    if ( operator == "*" ) 
      result = int1 * int2;    

    _result.add(result);
    _exp.clear();
    _exp.add(result.toString());
    exp = "";
    exp = exp + _exp[0];
    
    print("_exp : ${_exp}");
  }
