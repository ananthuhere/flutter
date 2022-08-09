import 'package:flutter/material.dart';
import 'package:sample_demo/screens/login.dart';

class ErnakulamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text(
            "Rawdata",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
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
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.only(right: 10.0, top: 15.0, left: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                width: 425,
                height: 240,
                child: Image.asset(
                  "assets/ernakulam.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 265.0),
                child: Text(
                  "Ernakulam",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 250.0),
                child: Text(
                  "Area : 2189 sqkm",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 300.0),
                child: Text(
                  "Discription:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Rawdata Technologies in Palarivattom, Ernakulam is known to satisfactorily cater to the demands of its customer base. It stands located at 2nd Floor, Cm Complex Annexe, Kochi, Kalavathu Road, Palarivattom-682025. It has earned stamps like Jd Verified, Jd Pay substantiating the credentials of the business.The business strives to make for a positive experience through its offerings.",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ));
  }
}
