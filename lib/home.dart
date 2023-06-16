import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:maaap/adv.dart';
import 'package:maaap/cur.dart';
import 'package:maaap/schedule.dart';

import 'nature.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 232, 153, 148),
        title: const Text("Welcome"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Lottie.asset('assets/img/signup.json'),
                  ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const Schedule();
                  }));
                },
                child: SizedBox(
                  width: 162,
                  child: Row(
                    children: [
                      const Text("    Make a schedule  "),
                      Icon(Icons.timeline_sharp)
                    ],
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 231, 135, 129)),
                ),
              ),
              SizedBox(height: 25,),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext context) {
                        return AdventureMapScreen();
                      }));
                        },
                        child: Container(
                          height: 70,
                          width: 250,
                          child: Row(
                            children: [
                              Text("      Adventure Spots  "),
                                  Icon(Icons.my_location_outlined),
                            ],
                          ),
                        
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),topRight: Radius.circular(50)),color: Color.fromARGB(255, 228, 135, 128)),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Nature();
                  }));
                    },
                    child: Container(
                       child: Row(
                        children: [
                          Text("                 Nature attractions   "),
                              Icon(Icons.my_location_outlined),
                        ],
                      ),
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),topLeft: Radius.circular(50)),color: Color.fromARGB(255, 228, 135, 128)),
                    ),
                  ),
                ],
              ),
                ],
              ),
             
              // ElevatedButton(onPressed: (){
              //   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              //     return const SimpleMapScreen();
              //   }));
              // }, child: const Text("Simple Map")),
        SizedBox(height: 25,),
             
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const CurrentLocationScreen();
                  }));
                },
                child: SizedBox(
                  width: 162,
                  child: Row(
                    children: [
                      const Text("User current location  "),
                      Icon(Icons.my_location_outlined)
                    ],
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 231, 135, 129)),
                ),
              ),
             
                      ],
          ),
        ),
      ),
    );
  }
}
