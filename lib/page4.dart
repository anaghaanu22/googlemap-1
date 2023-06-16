import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages4 extends StatefulWidget {
  const Pages4({super.key});

  @override
  State<Pages4> createState() => _Pages4State();
}

class _Pages4State extends State<Pages4> {
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
                title: Text('Palakkad Fort (1-2 hours)'),
              )),
               Card(child: ListTile(
                leading: Text('1:00 PM'),
                title: Text('Lunch break'),
              )),
               Card(child: ListTile(
                leading: Text('2:00 PM'),
                title: Text('Malampuzha Dam and Gardens (2-3 hours)'),
              )),
               Card(child: ListTile(
                leading: Text('5:30 PM'),
                title: Text(' Return to Palakkad'),
              )),
               Card(child: ListTile(
                leading: Text('6:00 PM'),
                title: Text(' Explore the local market or relax'),
              )),
               Card(child: ListTile(
                leading: Text('8:00 PM'),
                title: Text('Dinner'),
              )),
               Card(child: ListTile(
                leading: Text('7:00 AM'),
                title: Text('Start early from Palakkad'),
              )),
               Card(child: ListTile(
                leading: Text('9:00 AM'),
                title: Text('Arrive at Nelliyampathy Hills or Parambikulam Wildlife Sanctuary'),
              )),
               Card(child: ListTile(
                leading: Text('5:00 PM'),
                title: Text('Depart from Malampuzha and head back to Palakkad.'),
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