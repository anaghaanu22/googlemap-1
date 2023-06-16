import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages16 extends StatefulWidget {
  const Pages16({super.key});

  @override
  State<Pages16> createState() => _Pages16State();
}

class _Pages16State extends State<Pages16> {
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
                title: Text('  Start your tour from Palakkad.Malampuzha Dam and Gardens Time spent: 1-2 hours'),
              )),
               Card(child: ListTile(
                leading: Text('3:00 PM'),
                title: Text(' Depart from Malampuzha Dam.Nelliyampathy Hills spent 2-3 hours'),
              )),
               Card(child: ListTile(
                leading: Text('9:00 PM'),
                title: Text('Depart from Nelliyampathy Hills'),
              )),
               Card(child: ListTile(
                leading: Text('9:30 PM'),
                title: Text('Silent Valley National Park spent 4-5 hours'),
              )),
               Card(child: ListTile(
                leading: Text('2:30 AM'),
                title: Text(' Athirapally Waterfalls 1-2 hours'),
              )),
               Card(child: ListTile(
                leading: Text('5:00 AM'),
                title: Text(' Depart from Athirapally Waterfalls'),
              )),
               Card(child: ListTile(
                leading: Text('8:00 AM'),
                title: Text('Journey time from Athirapally Waterfalls: Approximately 2-3 hours'),
              )),
               Card(child: ListTile(
                leading: Text('9:00 AM'),
                title: Text('Return to Palakkad'),
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