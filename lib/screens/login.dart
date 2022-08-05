import 'package:flutter/material.dart';
import 'package:sample_demo/screens/districts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "Rawdata",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.only(right: 10.0,top: 15.0,left: 10.0),
              width: 100,
              height: 100,
              child: Image.asset(
                "assets/raw.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: 400.0,
              height: 118,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.black45,
              ),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (String textValue) {},
                    onTap: () {},
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white70,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white70,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white70,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    onChanged: (String textValue) {},
                    onTap: () {},
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white70,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white70,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            new SizedBox(
              width: 400.0,
              height: 50.0,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.brown)))),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContextctx) => DistrctPage()));
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
