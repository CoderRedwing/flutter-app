import 'package:flutter/material.dart';

import '../utils/myroutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(this.context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/cat.png",
                  fit: BoxFit.cover,
                  height: 300,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "WELCOME $name",
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "user name can not be emty";
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
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password is not emty ";
                          } else if (value.length < 6) {
                            return "password is not less than 6 digit ";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Material(
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 8),
                        color: Colors.deepPurple,
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: 40,
                            width: changebutton ? 50 : 150,
                            alignment: Alignment.center,

                            child: changebutton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                            //ElevatedButton(
                            // style: TextButton.styleFrom(
                            //   minimumSize: const Size(150, 40)),
                            //onPressed: () {
                            //Navigator.pushNamed(context, MyRoutes.homeRout
                            // );
                            // },
                            // child: const Text("Login"),
                            //)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
