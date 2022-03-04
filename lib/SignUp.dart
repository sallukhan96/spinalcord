import 'package:flutter/material.dart';
import 'package:flutter_spinalcordinjury/LoginPage.dart';
import 'package:flutter_spinalcordinjury/LoginPage.dart';

class SignUp extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        //brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        // width: double.infinity,
        // height: double.infinity,
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return "Please enter email";
                      if (!RegExp(
                              r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                          .hasMatch(value)) return 'INVALID EMAIL format';
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty && value.length <= 6)
                        return "password must not null";
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "password"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty && value.length <= 6)
                        return "Please Confirm Your Password";
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Confirm Password"),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Phone Number (Optional)"),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 270.0,
                  height: 45.0,
                  child: RaisedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        return null;
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints: const BoxConstraints(
                            maxWidth: 300.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "اکاؤنٹ بنائیں",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Already have an account? "),
                      Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
