import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/ForgotPassword.dart';
import 'package:flutter_spinalcordinjury/HomePage.dart';
import 'package:flutter_spinalcordinjury/SignUp.dart';

class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        child: Image.asset(
                          'assets/Logo.png',
                          fit: BoxFit.fitWidth,
                          height: 700,
                          width: 300,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "required";
                            if (!RegExp(
                                    r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                .hasMatch(value)) return 'INVALID EMAIL';
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "email",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty && value.length <= 6)
                              return "password must not null";
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "password"),
                        ),
                      ),

                      ///forgot password

                      // Padding(
                      //   padding: const EdgeInsets.all(20),
                      //   child: Align(
                      //     alignment: Alignment.centerRight,
                      //     child: InkWell(
                      //       child: Text(
                      //         "forget password",
                      //         style: TextStyle(color: Colors.blue),
                      //       ),
                      //       onTap: () {
                      //         Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => ForgotPassword()),
                      //         );
                      //       },
                      //     ),
                      //   ),
                      // ),
                      //ignore: deprecated_member_use
                      SizedBox(height: 25),
                      Container(
                        width: 140.0,
                        height: 60.0,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text("Login"),
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              formkey.currentState!.save();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage()),
                              );

                              return null;
                            }
                          },
                        ),
                      ),

                      SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            child: Text(
                              "Dont Have Account?  SignUp",
                              style: TextStyle(color: Colors.blue),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 5),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            child: Text(
                              "LogIn As A Guest!",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => SignUp()),
                              // );
                            },
                          ),
                        ),
                      ),
                    ],
                  ))),
        ));
  }
}
