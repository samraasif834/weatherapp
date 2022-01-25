// import 'package:flutter/material.dart';

// class Weather extends StatefulWidget {
//   const Weather({ Key? key }) : super(key: key);

//   @override
//   _WeatherState createState() => _WeatherState();
// }

// class _WeatherState extends State<Weather> {

//   var date=DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//       ),
//       backgroundColor: Colors.black,
//     body: Stack(
//       children: [
//         Positioned(
//           height: 880,
// bottom: -90,
//           width: MediaQuery.of(context).size.width,
//           child: Container(
//             child:Image.asset('assets/images/bg.png') ,
//           ),
//         ),
//      Positioned(
//                       top: -10,
//                       left: 40,
//                       child: Container(
//                           width: 300,
//                           child: TextField(
//                               style: TextStyle(
//                                   color: Colors.white),
//                               decoration: InputDecoration(
//                                 hintText: 'Enter your location',
//                                 hintStyle: TextStyle(
//                                     color: Colors.white),
//                                 enabledBorder: UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ))),
//      ),Positioned(
//       top: 50,
//       left: 40,
//        child: Row(
//          children: [
//            Container(
//  child: Icon(Icons.location_on,color: Colors.white,),
//            ),
//            Container(

//              width: MediaQuery.of(context).size.width,
//              child: Text("Karachi",
//              style:TextStyle(
//                color: Colors.white,
//                fontSize: 22,
//                fontWeight: FontWeight.bold
//              )
//              ),
//            ),
//          ],
//        ),
//      )
//       ]
//     ),

  
    
//                     );
     
   
//   }
// }