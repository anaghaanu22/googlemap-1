import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages9 extends StatefulWidget {
  const Pages9({super.key});

  @override
  State<Pages9> createState() => _Pages9State();
}

class _Pages9State extends State<Pages9> {
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
                title: Text(' Start your tour by visiting the historic Palakkad Fort, which is located in the heart of the city. Spend an hour exploring the fort, its architecture, and the surrounding gardens.'),
              )),
               Card(child: ListTile(
                leading: Text('3:30 PM'),
                title: Text('Malampuzha Dam and Gardens Head towards Malampuzha Dam, which is about 10 kilometers away from the fort. Spend an hour and a half enjoying the beautiful gardens, boating in the reservoir, and visiting the famous Yakshi statue.'),
              )),
               Card(child: ListTile(
                leading: Text('5:00 PM'),
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