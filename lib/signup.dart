import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';
import 'home.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/img/signup.json',height: 150,width: 150),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 15),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Name'),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 15),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Email'),
            ),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 15),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Mobile'),
            ),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 20),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Password'),
            ),
          ),

          InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Container(
            child: Center(child: Text('Register',style: TextStyle(fontSize: 16,),)),
        
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 255, 181, 176)),
          ),
        ),
        ],
      ),
    );
  }
}