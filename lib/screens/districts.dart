import 'package:flutter/material.dart';
import 'package:sample_demo/screens/eranakulam.dart';

class DistrctPage extends StatelessWidget {
  List<String> Districts = [
    "Ernakulam",
    "Thiruvananthapuram",
    "Kollam",
    "Alappuzha",
    "Kottayam",
    "Pathanamthitta",
    "Idukki",
    "Thrissur",
    "Palakkad",
    "Malappuram",
    "kozhikkode",
    "Wayanad",
    "Kannur",
    "Kasargod"
  ];
  List<int> Area = [
    3063,
    2189,
    2483,
    1415,
    2206,
    2652,
    4356,
    3027,
    4482,
    3554,
    2345,
    2130,
    2961,
    1989
  ];

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
                Navigator.pop(context);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Container(
          child: ListView.separated(
              padding: EdgeInsets.all(10.0),
              itemCount: Districts.length,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 2.0,
                  thickness: 3.0,
                  color: Colors.black54,
                );
              },
              itemBuilder: (context, index) {
                return TextButton(
                    onPressed: () {

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext ctx) => ErnakulamPage()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.indigo.shade50),
                    ),
                    child: ListTile(
                        title: Text(Districts[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text(
                          "Area: " + Area[index].toString() + " sqkm",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )));
              })),
    );
  }
}
