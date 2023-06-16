import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages7 extends StatefulWidget {
  const Pages7({super.key});

  @override
  State<Pages7> createState() => _Pages7State();
}

class _Pages7State extends State<Pages7> {
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
                leading: Text('12:00 PM'),
                title: Text('  Start your tour from Palakkad.'),
              )),
               Card(child: ListTile(
                leading: Text('12:30 PM'),
                title: Text('Malampuzha Dam and Gardens: Located about 10 km from Palakkad town, the Malampuzha Dam is a scenic spot with beautiful gardens, boating facilities, and a ropeway ride. Spend around 1 hour here.'),
              )),
               Card(child: ListTile(
                leading: Text('1:30 PM'),
                title: Text('Palakkad Fort: Return to Palakkad town and visit the historical Palakkad Fort, known for its architecture and archaeological significance. Spend about 30 minutes exploring the fort.'),
              )),
               Card(child: ListTile(
                leading: Text('2:00 PM'),
                title: Text('Lunch Break: Take a break for lunch at a local restaurant in Palakkad. Allocate around 1 hour for lunch.'),
              )),
               Card(child: ListTile(
                leading: Text('3:00 PM'),
                title: Text(' Jainmedu Jain Temple: Visit the Jainmedu Jain Temple, which is a significant pilgrimage site for Jains. Spend around 30 minutes here.'),
              )),
               Card(child: ListTile(
                leading: Text('4:30 PM'),
                title: Text(' Malampuzha Yakshi Statue: Head back to the Malampuzha area and visit the iconic Yakshi Statue, an impressive sculpture set amidst the scenic beauty of the dam. Spend around 1.30 hours here.'),
              )),
               Card(child: ListTile(
                leading: Text('6:00 PM'),
                title: Text('Fantasy Park: Conclude your day with a visit to the Fantasy Park, an amusement park offering various rides and entertainment options. Allocate around 1 hour for enjoyment.'),
              )),
               Card(child: ListTile(
                leading: Text('7:30 PM'),
                title: Text('Shopping and Dinner: Spend the remaining time exploring local markets for shopping and enjoying dinner at a restaurant of your choice.'),
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