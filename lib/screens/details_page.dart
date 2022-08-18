import 'package:flutter/material.dart';

import '../models/district.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String name;
  final String area;
  final String description;

  const DetailsPage({
    Key? key,
    required this.image,
    required this.name,
    required this.area,
    required this.description,
  }) : super(key: key);

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
                onPressed: () async{
                  final action = await AlertDialogs.yesCancelDialog(context, 'LOGOUT', 'Are you sure?');
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                margin:
                    const EdgeInsets.only(right: 10.0, top: 15.0, left: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                width: 425,
                height: 260,
                child: Image.network(image, fit: BoxFit.fill),
              ),
              const SizedBox(
                height: 10,
              ),
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
              const Text("Description:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(description,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  )),
            ],
          ),
        ));
  }
}
