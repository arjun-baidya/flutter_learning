import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        // for scrollable content for mini devices
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //  input section
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 62.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                          hintText: "User Name",
                          labelText: "User Name",
                        ),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Pass",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),

                    // custom animated button by using AnimatedContainer widget
                    InkWell(
                      onTap: () async {
                        // change the state
                        setState(() {
                          changeButton = true;
                        });
                        // after 1 second route to home page
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 40,
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changeButton
                            ? const Icon(Icons.done, color: Colors.white)
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 20 : 9),
                        ),
                      ),
                    ),
                    // END custom animated button by using AnimatedContainer widget
                    
                    // Buuton section
                    // ElevatedButton(
                    //   child:const Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                    //   onPressed: (){
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Durations {}
