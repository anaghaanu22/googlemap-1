import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages10 extends StatefulWidget {
  const Pages10({super.key});

  @override
  State<Pages10> createState() => _Pages10State();
}

class _Pages10State extends State<Pages10> {
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
                leading: Text('1:00 PM'),
                title: Text('  Start your tour from Palakkad.'),
              )),
               Card(child: ListTile(
                leading: Text('1:30 AM'),
                title: Text('Parambikulam Wildlife Sanctuary'),
              )),
               Card(child: ListTile(
                leading: Text('2:30 PM'),
                title: Text('Malampuzha Dam and Gardens'),
              )),
               Card(child: ListTile(
                leading: Text('3:30 PM'),
                title: Text('Nelliyampathy Hill Station'),
              )),
               Card(child: ListTile(
                leading: Text('4:30 PM'),
                title: Text(' Silent Valley National Park'),
              )),
               Card(child: ListTile(
                leading: Text('6:00 PM'),
                title: Text(' Attappady Tribal Village'),
              )),
               Card(child: ListTile(
                leading: Text('7:30 PM'),
                title: Text('Malampuzha Yakshi Statue and Gardens'),
              )),
               Card(child: ListTile(
                leading: Text('9:30 AM'),
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