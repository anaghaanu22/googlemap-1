import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages3 extends StatefulWidget {
  const Pages3({super.key});

  @override
  State<Pages3> createState() => _Pages3State();
}

class _Pages3State extends State<Pages3> {
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
                title: Text('Explore Malampuzha Dam and gardens (2 hours)'),
              )),
               Card(child: ListTile(
                leading: Text('1:00 PM'),
                title: Text('Travel to Palakkad Fort (30 minutes)'),
              )),
               Card(child: ListTile(
                leading: Text('2:00 PM'),
                title: Text('Visit Palakkad Fort (1 hour)'),
              )),
               Card(child: ListTile(
                leading: Text('3:00 PM'),
                title: Text(' Travel to Jain Temple in Jainmedu (20 minutes)'),
              )),
               Card(child: ListTile(
                leading: Text('3:30 PM'),
                title: Text(' Visit Jain Temple (30 minutes)'),
              )),
               Card(child: ListTile(
                leading: Text('4:00 PM'),
                title: Text(' Travel to Dhoni Waterfalls (45 minutes)'),
              )),
                Card(child: ListTile(
                leading: Text('4:45 PM'),
                title: Text(' Enjoy Dhoni Waterfalls (3 hours)'),
              )),
                Card(child: ListTile(
                leading: Text('8:30 PM'),
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