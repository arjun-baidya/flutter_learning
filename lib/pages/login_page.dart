import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String password = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context)async{
    if (_formKey.currentState!.validate()) {
      // change the state
      setState(() {
        changeButton = true;
      });
      // after 1 second route to home page
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        // for scrollable content for mini devices
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                          // form validation
                          validator: (value){
                            if(value == null){
                              return "Name can't be empty";
                            }
                            else if(value.length < 3){
                              return "Name must be at least 3 characters";
                            }
                            return null;
                          },
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
                        // form validation
                        validator: (value) {
                          if (value == null) {
                            return "Password can't be empty";
                          }
                          else if (value.length <6){
                            return "password would be minimum 6 characters";
                          }
                          return null;
                        },
                        onChanged: (value){
                          password = value;
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
          
                      // custom animated button by using AnimatedContainer widget
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeButton ? 50:8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
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
          ),
        ));
  }
}

class Durations {}
