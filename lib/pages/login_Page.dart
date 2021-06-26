import 'package:exercise_01/pages/home_page.dart';
// ignore: unused_import
import 'package:exercise_01/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext cont) {
    if (_formKey.currentState!.validate()) {
      // ignore: unused_label
      onTap:
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Center(child: Text("Fitness App")),
          ),
      body: Center(
          child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      new Image.asset(
                        "assets/images/login.png",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text("welcome $name",
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 48.0, horizontal: 60.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Username",
                                labelText: "Username",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Username Cannot Be Empty";
                                }
                                return null;
                              },
                              onChanged: (value) {
                                name = value;
                                setState(() {});
                              },
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter password",
                                labelText: "password",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password Cannot Be Empty";
                                } else if (value.length < 6) {
                                  return "Password should Be At Least 6";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 30.0,
                            ),

                            Material(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(8),
                              child: InkWell(
                                onTap: () => moveToHome(context),
                                child: Container(
                                  width: 175,
                                  height: 65,
                                  //color: Colors.deepPurple,
                                  alignment: Alignment.center,
                                  child: Text("Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22)),
                                ),
                              ),
                            )
                            //ElevatedButton(
                            //    child: Text("Login"),
                            //    style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                            //    onPressed: () {
                            //      Navigator.push(
                            //          context,
                            //          new MaterialPageRoute(
                            //              builder: (context) => new HomePage()));
                            //    })
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))),
    );
  }
}
