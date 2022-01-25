import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/screens/screen2.dart';

class Weather1 extends StatefulWidget {
  const Weather1({Key? key}) : super(key: key);

  @override
  _Weather1State createState() => _Weather1State();
}

class _Weather1State extends State<Weather1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: -150,
            child: Container(
              child: Image.asset(
                'assets/images/img4.png',
                height: 400,
                width: 500,
              ),
            ),
          ),
          Positioned(
            top: -40,
            left: 90,
            child: Container(
              child: Image.asset(
                'assets/images/img4.png',
                height: 250,
                width: 500,
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 140,
            child: Container(
              child: Image.asset(
                'assets/images/img4.png',
                height: 250,
                width: 500,
              ),
            ),
          ),
          Positioned(
            top: 430,
            height: 600,
            width: 400,
            child: Container(
                // color: Colors.grey.shade100,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 50,
                      child: Container(
                        child: Text.rich(
                          TextSpan(
                            // default text style
                            children: [
                              TextSpan(
                                  text: ' Find ',
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(
                                        250,
                                        156,
                                        20,
                                        1.0,
                                      ))),
                              TextSpan(
                                  text: 'the sun \n in your City!',
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(36, 40, 161, 1.0))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 60,
                      child: Container(
                        child: Text(
                          ' It\s pleasure to keep track of the \n       weather with the new app',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 250,
                      left: 60,
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Container(
                          child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Weather2()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(250, 156, 20, 1.0),
                        ),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      )),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
