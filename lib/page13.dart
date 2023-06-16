import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages13 extends StatefulWidget {

  const Pages13({super.key});

  @override
  State<Pages13> createState() => _Pages13State();
}

class _Pages13State extends State<Pages13> {
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
                title: Text(' Start your tour by visiting the historic Palakkad Fort, which is located in the heart of the city. Spend an hour exploring the fort, its architecture, and the surrounding gardens.'),
              )),
               Card(child: ListTile(
                leading: Text('3:30 AM'),
                title: Text('Malampuzha Dam and Gardens Head towards Malampuzha Dam, which is about 10 kilometers away from the fort. Spend an hour and a half enjoying the beautiful gardens, boating in the reservoir, and visiting the famous Yakshi statue.'),
              )),
               Card(child: ListTile(
                leading: Text('5:30 PM'),
                title: Text('Jain Temple at Jainmedu After the visit to Malampuzha, make your way to Jain Temple at Jainmedu, which is around 5 kilometers from Malampuzha Dam. Explore the temple and its intricate architecture, known for its Jain influences.'),
              )),
               Card(child: ListTile(
                leading: Text('6:30 PM'),
                title: Text('Jain Temple at Jainmedu After the visit to Malampuzha, make your way to Jain Temple at Jainmedu, which is around 5 kilometers from Malampuzha Dam. Explore the temple and its intricate architecture, known for its Jain influences.'),
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