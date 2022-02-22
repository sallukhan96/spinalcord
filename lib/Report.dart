import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
        body: SafeArea(
            child: ListView(children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: const BoxDecoration(
                  //color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Report any bug",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Email *',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter Your Email"),
                          //validatorText: 'Please Provide Email',
                          validator: (val) {
                            if (val!.trim().isEmpty) {
                              return 'Please Provide Email';
                            } else
                              return null;
                          },

                          //textInputType: TextInputType.text,
                          obscureText: false,
                          controller: _emailController,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'what\'s went wrong  *',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Say Something......",
                            // labelText: "Email",
                          ),
                          controller: _descriptionController,
                          //textInputType: TextInputType.multiline,
                          maxLines: 6,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: double.infinity,
                          height: 45,
                          child: RaisedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                print('valid');
                              }
                            },
                            child: const Text(
                              'submit',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ])));
  }
}
