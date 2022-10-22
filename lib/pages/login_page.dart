import "package:flutter/material.dart";
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loginClicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username...", labelText: "Username"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password...", labelText: "Password"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    loginClicked = true;
                  });

                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, AppRoutes.home);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 40,
                  width: loginClicked ? 60 : 120,
                  alignment: Alignment.center,
                  child: loginClicked
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(loginClicked ? 40 : 8)),
                ),
              )
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, AppRoutes.home);
              //   },
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              // )
            ],
          ),
        ));
  }
}
