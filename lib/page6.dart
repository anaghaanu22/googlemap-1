import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pages6 extends StatefulWidget {
  const Pages6({super.key});

  @override
  State<Pages6> createState() => _Pages6State();
}

class _Pages6State extends State<Pages6> {
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
                title: Text('Malampuzha Dam and Gardens: Visit the picturesque dam and enjoy the scenic beauty of the gardens.'),
              )),
               Card(child: ListTile(
                leading: Text('2:00 PM'),
                title: Text('Palakkad Fort: Explore the historic fort, which is a well-preserved heritage site.'),
              )),
               Card(child: ListTile(
                leading: Text('3:30 PM'),
                title: Text('Jainmedu Jain Temple: Visit this ancient Jain temple known for its architectural beauty and historical significance.'),
              )),
               Card(child: ListTile(
                leading: Text('4:30 PM'),
                title: Text(' Fantasy Park: Spend some time at this amusement park, enjoying various rides and entertainment options.'),
              )),
               Card(child: ListTile(
                leading: Text('6:00 PM'),
                title: Text(' Dhoni Waterfalls: Take a short trek to reach the enchanting Dhoni Waterfalls and enjoy the natural beauty.'),
              )),
               Card(child: ListTile(
                leading: Text('7:30 PM'),
                title: Text('Siruvani Dam: Visit the dam located in the neighboring state of Tamil Nadu and witness the scenic surroundings.'),
              )),
               Card(child: ListTile(
                leading: Text('8:30 AM'),
                title: Text('Parambikulam Wildlife Sanctuary: Explore this sanctuary known for its rich biodiversity and wildlife.'),
              )),
               Card(child: ListTile(
                leading: Text('9:30 AM'),
                title: Text('Silent Valley National Park: Experience the serene ambiance of this national park known for its untouched beauty.'),
              )),
               Card(child: ListTile(
                leading: Text('10:00 PM'),
                title: Text(' Return to Palakkad.'),
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