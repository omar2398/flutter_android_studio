import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters/REsult_bmi.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});
  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  bool ismale = true;
  double height = 120;
  int age = 18,weight = 40;
  double result = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
        'BMI Calculator',

        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(19),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            ImageIcon(
                              AssetImage('assets/images/male-beard-doctor-smart-svgrepo-com.png'),
                              color: Colors.white,
                              size: 100,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontFamily: "Cairo",
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ismale ? Colors.blueAccent : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: !ismale ? Colors.blueAccent : Colors.grey,
                        ),
                        child: Column(
                          children: [
                            ImageIcon(
                              AssetImage('assets/images/female-glasses-nerd-gerk-student-svgrepo-com.png'),
                              size: 100,
                              color: Colors.white,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 40,
                                fontFamily: "Cairo",
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 19
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${height.round()}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "Ubuntu",
                                ),
                              ),
                              Text(
                                'CM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "Ubuntu",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Slider(
                              value: height,
                              min: 80,
                              max: 190,
                              onChanged: (value){
                                setState(() {
                                  height = value;
                                });
                                print(value.round());
                              },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.teal[400],
                    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text  (
                            'Weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    size: 22,
                                  )
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.redAccent,
                                  onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    size: 22,
                                  )
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color : Colors.teal[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text  (
                            'Age',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    size: 22,
                                  )
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                  backgroundColor: Colors.redAccent,
                                  onPressed: (){
                                    age--;
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    size: 22,
                                  )
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 19
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10
              ),
              child:  Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: MaterialButton(
                    height: 60,
                      onPressed: ()
                      {
                        setState(() {
                          result = weight / pow(height / 100, 2);
                          print(result);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:(context) => result_bmi(
                                    result: result,
                                    age: age,
                                    isMale: ismale,
                                  ),
                              ),
                          );
                        });
                      },
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
