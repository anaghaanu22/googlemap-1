import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:lottie/lottie.dart';
import 'package:maaap/home.dart';

import 'const.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> getData() async {
    if (_formKey.currentState!.validate()) {
      var data = {
        'email': email.text,
        'password': password.text,
      };
      var response = await post(Uri.parse('${Con.url}login.php'), body: data);
      print(response.body);
      var res = jsonDecode(response.body);
      if (res['message'] == 'login') {
        Fluttertoast.showToast(msg: 'Login Successfully...');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        Fluttertoast.showToast(msg: 'Something went wrong...!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 180),
              Lottie.asset('assets/img/signup.json', height: 150, width: 150),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 15,
                  bottom: 20,
                ),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              InkWell(
                onTap: getData,
                child: Container(
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 255, 181, 176),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
