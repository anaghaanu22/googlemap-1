import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages5 extends StatefulWidget {
  const Pages5({super.key});

  @override
  State<Pages5> createState() => _Pages5State();
}

class _Pages5State extends State<Pages5> {
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
                title: Text('Start your tour by visiting Palakkad Fort, a well-preserved historical monument. Spend about an hour exploring its architecture, gardens, and museums.'),
              )),
               Card(child: ListTile(
                leading: Text('2:00 PM'),
                title: Text('Malampuzha Dam and Gardens (2 hours): Next, head to Malampuzha Dam, which is about 10 kilometers from Palakkad town. Spend around 2 hours exploring the dam, gardens, and amusement park. You can enjoy boating, visit the rock garden, and take a cable car ride.'),
              )),
               Card(child: ListTile(
                leading: Text('3:00 PM'),
                title: Text('Kalpathy Heritage Village (1 hour): Proceed to Kalpathy, a heritage village renowned for its temples and annual Ratholsavam festival. Spend an hour walking through the narrow streets, observing traditional houses, and visiting Kalpathy Temple.'),
              )),
               Card(child: ListTile(
                leading: Text('5:00 PM'),
                title: Text(' Parambikulam Wildlife Sanctuary (2 hours): If you are interested in wildlife and nature, you can travel to Parambikulam Wildlife Sanctuary. It is located about 70 kilometers from Palakkad town. Allocate 2 hours for a quick safari or nature walk, where you can spot various animals, birds, and lush greenery.'),
              )),
               Card(child: ListTile(
                leading: Text('6:00 PM'),
                title: Text(' back to palakkad'),
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