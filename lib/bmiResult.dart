import 'package:flutter/material.dart';
import 'dart:math';

class BMIResult extends StatelessWidget {
  BMIResult({@required this.tinggi_badan, @required this.berat_badan});
  final int tinggi_badan;
  final int berat_badan;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;

    if (bmi >= 30)
      cBMI = "Obesitas";
    else if (bmi >= 23)
      cBMI = "Berat Badan Berlebih";
    else if (bmi >= 18.5)
      cBMI = "Normal";
    else
      cBMI = "Berat Badan Kurang";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text('Hasil BMI'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 95,
                fontWeight: FontWeight.w700,
                color: Colors.black26,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.black26,
              ),
            ),
            Text(
              '18,5 - 22,9',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.black26,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 75,
        child: RaisedButton(
          color: Colors.blueGrey,
          child: Text(
            'Kembali',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
