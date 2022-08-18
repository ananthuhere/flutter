import 'package:flutter/material.dart';

import './districts.dart';

class LoginPage extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              "Rawdata",
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 130,
            ),
            Container(
              width: 400.0,
              height: 118,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (String textValue) {},
                    onTap: () {},
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo.shade50,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo.shade50,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo.shade50,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.name,
                    onChanged: (String textValue) {},
                    onTap: () {},
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo.shade50,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo.shade50,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo.shade50,
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 400.0,
              height: 50.0,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade600),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.indigo.shade50)))),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                onPressed: () {
                  checkLogin(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final email = _emailController.text;
    String emailIs = "abc@mail.com";
    final password = _passwordController.text;
    const passwordIs = "password@123";
    if (emailIs == email && passwordIs == password) {
      _emailController.clear();
      _passwordController.clear();
      Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => DistrictPage()),
        (Route<dynamic> route) => false,
      );
    } else {
      const errorMessage = "email and password does not match";
      ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(10),
          content: Text(errorMessage)));
    }
  }
}
