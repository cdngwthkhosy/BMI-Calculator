import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmiResult.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        leading: Icon(
          Icons.person,
          color: Colors.white,
        ),
        title: Text('Body Mass Index'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/bmi_person.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          tinggi = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          suffix: Text('cm'),
                          filled: true,
                          hintText: 'Tinggi Badan'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          berat = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          suffix: Text('kg'),
                          filled: true,
                          hintText: 'Berat Badan'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                            tinggi_badan: tinggi, berat_badan: berat)),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.blueGrey,
                child: Text(
                  'Hitung BMI',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 55,
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: Text(
            'Developed by Khosy 2020',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
