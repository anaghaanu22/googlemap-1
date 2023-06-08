import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:maaap/home.dart';
import 'package:maaap/signin.dart';
import 'package:maaap/signup.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signin()));
          },
          child: Container(
            child: Center(child: Text('Sign In',style: TextStyle(fontSize: 16,),)),
        
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 255, 181, 176)),
          ),
        ),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Signup();
            },));
          },
          child: Container(
            child: Center(child: Text('Sign Up',style: TextStyle(fontSize: 16,),)),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 255, 181, 176)),
          ),
        ),
        Lottie.asset('assets/img/welcome.json'),
      ]),
    );
  }
}

