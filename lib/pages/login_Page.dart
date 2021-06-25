import 'package:exercise_01/pages/home_page.dart';
import 'package:exercise_01/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                    ),
                    SizedBox(
                      height: 70.0,
                    ),

                    InkWell(
                      onTap: () {
                        onTap:
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new HomePage()));
                      },
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
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(8)),
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
        ));
  }
}
