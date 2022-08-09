import 'package:flutter/material.dart';
import 'package:sample_demo/screens/eranakulam.dart';
import 'package:sample_demo/screens/login.dart';

class DistrctPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black45,
        title: Transform(
          // you can forcefully translate values left side using Transform
          transform: Matrix4.translationValues(-50.0, 0.0, 0.0),
          child: Text(
            "Rawdata",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        leading: new Container(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext ctx) => LoginPage()));
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Container(
        width: 400,
        decoration: BoxDecoration(
            color: Colors.white10,
            border: Border.all(
              color: Colors.white10,
            ),
            borderRadius: BorderRadius.only(topRight: Radius.circular(40.0))),
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        padding: EdgeInsets.only(top: 10.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black54)),
                color: Colors.grey,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext ctx) => ErnakulamPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ernakulam ",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Container(
                        child: Text('Area : 2189 sqkm',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      )
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black54)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Thiruvananthapuram ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Container(
                        child: Text('Area : 2189 sqkm',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      )
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black54)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Pathanamthitta",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black54)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Alappuzha ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Kollam",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Kottayam ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Idukki",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Palakkad ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Wayanad ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Thrissur ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Malappuram ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Kozhikkode ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Kannur",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
                color: Colors.grey,
              ),
              width: 300,
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Text("Kasargod ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Text('Area : 2189 sqkm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
