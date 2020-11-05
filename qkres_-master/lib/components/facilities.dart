import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qkres_app/components/categories.dart';
import 'package:carousel_slider/carousel_slider.dart';
//this page is the body of the home page

class Facilities extends StatefulWidget {
  @override
  _FacilitiesState createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.grey[300], Colors.white])),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 7.0, left: 20),
            child: Text(
              'QkRes',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey[700],
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Categories(),
          Container(
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(5),
            height: 300,
            width: 400,
            decoration: BoxDecoration(
                color: Color(0xFFA4D4AE),
                borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Facilities & Services.',
                    style: TextStyle(
                        fontFamily: 'Economica',
                        color: Colors.grey[800],
                        fontSize: 40.0),
                    // textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'images/fs.png',
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, left: 30),
                  child: Container(
                      alignment: Alignment.center,
                      child:
                          // TextAlign: TextAlign.center,
                          Text(
                        "1.Consultancy\n2.3D Printing\n3.Manufacturing & Fabrication",
                        style: TextStyle(
                          fontFamily: 'courier',
                          color: Colors.grey[800],
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      )),
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    ]);
  }

// 0xFFc8ede6
}
