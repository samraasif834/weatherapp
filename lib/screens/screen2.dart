import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/screens/screen3.dart';
import 'package:weatherapp/service/screen2%20service.dart';

class Weather2 extends StatefulWidget {
  const Weather2({Key? key}) : super(key: key);

  @override
  _Weather2State createState() => _Weather2State();
}

class _Weather2State extends State<Weather2> {
  String? city = 'Karachi';
  DateTime currentdate = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    String formatdate = new DateFormat('E d MMMM').format(currentdate);
    String formatdate1 = DateFormat(' hh:mm a').format(DateTime.now());
    return Scaffold(
        backgroundColor: Color.fromRGBO(69, 76, 180, 1.0),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(69, 76, 180, 1.0),
          leading: Icon(Icons.menu, color: Colors.white),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 118),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  Text(
                    '$city',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen3()));
            }, icon: Icon(Icons.search))
          ],
        ),
        body: FutureBuilder(
            future: getkarachi('$city'),
            builder: (context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('none');
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                case ConnectionState.active:
                  return Text('');
                case ConnectionState.done:
                  if (snapshot.hasError) {
                    return Text(
                      '${snapshot.error}',
                      style: TextStyle(color: Colors.red),
                    );
                  }
                  if (snapshot.data == null) {
                    return Text("hello3");
                  } else {
                    return Stack(
                      children: [
                        Positioned(
                          top: 50,
                          left: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(65, 67, 152, 1.0),

                                // Color.fromRGBO(29, 34, 177, 1.0)

                                border: Border.all(
                                  color: Colors.transparent,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 30,
                                  left: 20,
                                  child: Container(
                                      child: Text(
                                    "$city",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                ),
                                Positioned(
                                  top: 70,
                                  left: 20,
                                  child: Container(
                                      child: Row(children: [
                                    Text(
                                      '$formatdate',
                                      style: TextStyle(
                                        color: Color.fromRGBO(
                                          250,
                                          156,
                                          20,
                                          1.0,
                                        ),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '$formatdate1',
                                      style: TextStyle(
                                        color: Color.fromRGBO(
                                          250,
                                          156,
                                          20,
                                          1.0,
                                        ),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ])),
                                ),

                                Positioned(
                                  top: 150,
                                  left: 20,
                                  child: Container(
                                      child: Text(
                                    "${(snapshot.data[0].temp - 273).toStringAsFixed(0)}°C",
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                        250,
                                        156,
                                        20,
                                        1.0,
                                      ),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                ),
                                Positioned(
                                    left: 240,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      child: Image.asset(
                                          'assets/images/clearsky.png'),
                                    )),

                                Positioned(
                                  top: 180,
                                  left: 20,
                                  child: Container(
                                    child: Text(
                                       "Clear sky",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                                // Container(
                                //   color: Colors.red,
                                // ),

                                // Container(
                                //   color: Colors.red,
                                // ),

                                // Container(
                                //   color: Colors.red,
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: 350,
                            left: 30,
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(65, 67, 152, 1.0),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      child: Column(children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: Text("Humidity",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Text("${(snapshot.data[0].humidity)}%",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                    250,
                                                    156,
                                                    20,
                                                    1.0,
                                                  ),
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                      ]),
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                65, 67, 152, 1.0),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 20),
                                              child: Text("Pressure",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Container(
                                                margin:
                                                    EdgeInsets.only(top: 20),
                                                child: Text("${(snapshot.data[0].pressure)} Hg",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Color.fromRGBO(
                                                        250,
                                                        156,
                                                        20,
                                                        1.0,
                                                      ),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ))),
                                          ],
                                        )),
                                  ],
                                ),
                              ],
                            )),
                        Positioned(
                            top: 500,
                            left: 30,
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(65, 67, 152, 1.0),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      child: Column(children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: Text("Speed",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Text("${(snapshot.data[0].wind)} Km/h",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                    250,
                                                    156,
                                                    20,
                                                    1.0,
                                                  ),
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                      ]),
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(65, 67, 152, 1.0),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      child: Column(children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: Text("Degree",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Text("${(snapshot.data[0].degree)}°",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                    250,
                                                    156,
                                                    20,
                                                    1.0,
                                                  ),
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                      ]),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    );
                  }
              }
            }));
  }
}
