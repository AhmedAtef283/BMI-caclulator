import 'package:first_app/defults/Components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BmiResult extends StatelessWidget
{
  final int result;
  final bool isMale;
  final int age;
  final double height;
  final int weight;


  BmiResult({
    @required this.age,
    @required this.isMale,
    @required this.result,
    @required this.height,
    @required this.weight ,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'BMI Result',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              'height : $height',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              'weight : $weight',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              'Result : ${result}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              'Status : ${getResult(result)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),

          ],
        ),
      ),
    );
  }




  String getResult(int result){
    if (result <18) {

      return 'UnderWeight';
        // Text('UnderWeight' ,style: TextStyle(color: Colors.lightGreenAccent));
    }
    else if (result >=18 && result <=24) {

      return 'NormalWeight';
        // Text('NormalWeight' ,style: TextStyle(color: Colors.green));
    }
    else if (result >=25 && result <=29) {

      return 'OverWeight' ;
        // Text('OverWeight' ,style: TextStyle(color: Colors.redAccent));
    }
    else if (result >=30) {
      return 'ObeseWeight';

        // Text('UnderWeight' ,style: TextStyle(color: Colors.red) );
    }


  }

}
