import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFF525252);

class Bmi extends StatefulWidget {
  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result;
  String _resultCat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height (in in.)',
                icon: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Weight (in lbs.)',
                icon: Icon(Icons.line_weight),
              ),
            ),
            SizedBox(height: 15),
            RaisedButton(
              color: PrimaryColor,
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: calculateBMI,
            ),
            SizedBox(height: 15),
            Text(
              _result == null ? "Enter Value" : "Your BMI is ${_result.toStringAsFixed(2)}",
              style: TextStyle(
                color: PrimaryColor,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              _resultCat == null ? "" : "Your category is $_resultCat",
              style: TextStyle(
                color: PrimaryColor,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculateBMI() {
    double height = double.parse(_heightController.text);
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = (weight / heightSquare) * 703;
    _result = result;
    _resultCat = checkCat(result);

    setState(() {});
  }

  String checkCat(double result) {
    if (result < 18.5) {
      return "underweight";
    }
    else if (result >= 18.5 && result <= 24.9) {
      return "normal weight";
    }
    else if (result >= 25 && result <= 29.9) {
      return "overweight";
    }
    else {
      return "obese";
    }
  }
}
