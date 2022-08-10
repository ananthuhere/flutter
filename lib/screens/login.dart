import 'package:flutter/material.dart';
import 'package:sample_demo/screens/districts.dart';

class LoginPage extends StatelessWidget {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                  fontSize: 32,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 130,
            ),

            Container(
              width: 400.0,
              height: 118,
              decoration: BoxDecoration(
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
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
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
            SizedBox(
              height: 15,
            ),
            new SizedBox(
              width: 400.0,
              height: 50.0,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey.shade600),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.indigo.shade50)))),
                child: Text(
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
    ));
  }
  
  void checkLogin(BuildContext ctx)
  {
    final _email = _emailController.text;
    const _emailis = "abc@mail.com";
    final _password = _passwordController.text;
    const
    _passwordis = "password@123";
    if(_emailis == _email && _passwordis == _password)
      {
        Navigator.of(ctx).push(
          MaterialPageRoute(builder: (BuildContext ctx) => DistrctPage()));
    }else{
      final _errorMessage = "email and password does not match";
      ScaffoldMessenger.of(ctx)
          .showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(10),
          content: Text(_errorMessage)));
    }
  }
}
