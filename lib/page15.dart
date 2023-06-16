import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages15 extends StatefulWidget {
  const Pages15({super.key});

  @override
  State<Pages15> createState() => _Pages15State();
}

class _Pages15State extends State<Pages15> {
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
                leading: Text('2:00 PM'),
                title: Text('  Start your tour from Palakkad.'),
              )),
              
               Card(child: ListTile(
                leading: Text('3:30 PM'),
                title: Text('Travel to Palakkad Fort (30 minutes)'),
              )),
               Card(child: ListTile(
                leading: Text('5:00 PM'),
                title: Text('Visit Palakkad Fort (1 hour)'),
              )),
               Card(child: ListTile(
                leading: Text('7:00 PM'),
                title: Text(' Travel to Jain Temple in Jainmedu (20 minutes)'),
              )),
               Card(child: ListTile(
                leading: Text('9:30 PM'),
                title: Text(' Visit Jain Temple (30 minutes)'),
              )),
               Card(child: ListTile(
                leading: Text('11:00 PM'),
                title: Text(' Travel to Dhoni Waterfalls (45 minutes)'),
              )),
               
                Card(child: ListTile(
                leading: Text('12:00 AM'),
                title: Text(' Explore Kalpathy Heritage Village (1 hour)'),
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