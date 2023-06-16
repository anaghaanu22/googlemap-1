import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages1 extends StatefulWidget {
  const Pages1({super.key});

  @override
  State<Pages1> createState() => _Pages1State();
}

class _Pages1State extends State<Pages1> {
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
                title: Text(' Start your day by visiting the Palakkad Fort in Palakkad town. Spend around 1-2 hours exploring the fort and its surroundings.'),
              )),
               Card(child: ListTile(
                leading: Text('12:30 PM'),
                title: Text('  After visiting the fort, you can head to Malampuzha Dam and Gardens, which is approximately a 30-minute drive from Palakkad town. Explore the gardens, take a boat ride, and enjoy the scenic views. You can spend around 2-3 hours here.'),
              )),
               Card(child: ListTile(
                leading: Text('03:30 PM'),
                title: Text('If you have more time and are interested in visiting Nelliyampathy Hills, which is around a 2-hour drive from Malampuzha, you can proceed to Nelliyampathy. Enjoy the beautiful landscapes, visit tea and coffee plantations, and relax amidst nature. Spend around 2-3 hours exploring Nelliyampathy.'),
              )),
               Card(child: ListTile(
                leading: Text('06:30 PM'),
                title: Text(' Start your return journey back to Palakkad from Nelliyampathy..'),
              )),
               Card(child: ListTile(
                leading: Text('08:30 PM'),
                title: Text(' Arrive back in Palakkad town.'),
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