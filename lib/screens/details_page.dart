import 'package:flutter/material.dart';
import 'package:sample_demo/screens/login.dart';

class DetailsPage extends StatelessWidget {
  final String name;
  final String area;
  final String description;

  const DetailsPage(
      {Key? key,
      required this.name,
      required this.area,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text(
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
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (Route<dynamic> route) => false);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: ListView(
        children: [
          Text(name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Text("Area: $area sqkm",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              )),
          const SizedBox(
            height: 10,
          ),
          Text("Description:$description",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              )),
        ],
      ),
    );
  }
}
