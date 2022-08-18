import 'package:flutter/material.dart';

import '../screens/login.dart';

class District {
  final String image;
  final String name;
  final int area;
  final String description;

  District(
    this.image,
    this.name,
    this.area,
    this.description,
  );
}

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            content: Text(
              body,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context, rootNavigator: true)
                          .pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return LoginPage();
                          },
                        ),
                        (_) => false,
                      ),
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  )),
              TextButton(
                  onPressed: () =>
                      Navigator.of(context).pop(DialogsAction.cancel),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  )),
            ],
          );
        });
    return (action != null) ? action : DialogsAction.cancel;
  }
}
