import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages2 extends StatefulWidget {
  const Pages2({super.key});

  @override
  State<Pages2> createState() => _Pages2State();
}

class _Pages2State extends State<Pages2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Schedule'),backgroundColor:   Color.fromARGB(255, 231, 135, 129),),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
            children: [
              Card(child: ListTile(
                leading: Text('10:30 AM'),
                title: Text('  Start your tour from Palakkad.'),
              )),
               Card(child: ListTile(
                leading: Text('11:00 AM'),
                title: Text('Arrive at Palakkad Fort and explore the fort premises, including the Hanuman Temple. Spend approximately 1 hour here.'),
              )),
               Card(child: ListTile(
                leading: Text('12:00 PM'),
                title: Text('Depart from Palakkad Fort and head towards Malampuzha Dam and Gardens. It takes around 30 minutes to reach'),
              )),
               Card(child: ListTile(
                leading: Text('12:30 PM'),
                title: Text(' Reach Malampuzha Dam and Gardens. Spend around 1.5 to 2 hours enjoying the scenic views, taking a boat ride, and exploring the gardens.'),
              )),
               Card(child: ListTile(
                leading: Text('2:30 PM'),
                title: Text(' Depart from Malampuzha Dam and Gardens and head to the Rock Garden. It is adjacent to the dam and takes about 5 minutes to reach.'),
              )),
               Card(child: ListTile(
                leading: Text('3:05 PM'),
                title: Text(' Reach Dhoni Waterfalls and spend around 1 hour enjoying the natural beauty, taking a dip in the pool, and relaxing in the surroundings.'),
              )),
               Card(child: ListTile(
                leading: Text('5:00 PM'),
                title: Text('Arrive back in Palakkad and conclude your tour.'),
              )),
             
            ],
            
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: ElevatedButton(onPressed: (){}, child: Row(
                       children: [
                         Text('Back to home  '),
                         Icon(Icons.home),
                       ],
                     ),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 231, 135, 129)),
                ),),
                   ),
                 ],
               ),
             ],
           ), 
          ],
        )
      ),
      
    );
  }
}