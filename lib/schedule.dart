import 'package:flutter/material.dart';
import 'package:maaap/page.dart';
import 'package:maaap/page10.dart';
import 'package:maaap/page11.dart';
import 'package:maaap/page12.dart';
import 'package:maaap/page13.dart';
import 'package:maaap/page14.dart';
import 'package:maaap/page15.dart';
import 'package:maaap/page16.dart';
import 'package:maaap/page2.dart';
import 'package:maaap/page3.dart';
import 'package:maaap/page4.dart';
import 'package:maaap/page5.dart';
import 'package:maaap/page6.dart';
import 'package:maaap/page7.dart';
import 'package:maaap/page8.dart';
import 'package:maaap/page9.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  String? selectedTime;
  String? selectedHours;

  List<String> timeOptions = [
    '10:30 AM',
    '12:00 PM',
    '1:00 PM',
    '2:00 PM',
    // Add more options as needed
  ];

  List<String> hoursOptions = [
    '6 hour',
    '10 hour',
    '12 hour',
    '24 hour',
    // Add more options as needed
  ];

  void getData() {
    print(selectedTime);
    print(selectedHours);
    if (selectedTime == '10:30 AM' && selectedHours == '10 hour') {
      print('object');
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages1();
      }));
    }
     if (selectedTime == '10:30 AM' && selectedHours == '6 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages2();
      }));
    }
    if (selectedTime == '10:30 AM' && selectedHours == '12 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages3();
      }));
    }
     if (selectedTime == '10:30 AM' && selectedHours == '24 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages4();
      }));
    }
    if (selectedTime == '12:00 PM' && selectedHours == '6 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages5();
      }));
    }
    if (selectedTime == '12:00 PM' && selectedHours == '10 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages6();
      }));
    }
     if (selectedTime == '12:00 PM' && selectedHours == '12 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages7();
      }));
    }
     if (selectedTime == '12:00 PM' && selectedHours == '24 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages8();
      }));
      
    }
     if (selectedTime == '1:00 PM' && selectedHours == '6 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages9();
      }));
    }
     if (selectedTime == '1:00 PM' && selectedHours == '10 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages10();
      }));
    }
     if (selectedTime == '1:00 PM' && selectedHours == '12 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages11();
      }));
    }
     if (selectedTime == '1:00 PM' && selectedHours == '24 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages12();
      }));
    }
     if (selectedTime == '2:00 PM' && selectedHours == '6 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages13();
      }));
    }
     if (selectedTime == '2:00 PM' && selectedHours == '10 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages14();
      }));
    }
     if (selectedTime == '2:00 PM' && selectedHours == '12 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages15();
      }));
    }
     if (selectedTime == '2:00 PM' && selectedHours == '24 hour') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Pages16();
      }));
    }



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              'Make your choice',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 28, right: 28),
            child: DropdownButtonFormField<String>(
              value: selectedTime,
              onChanged: (value) {
                setState(() {
                  selectedTime = value!;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Starting time',
              ),
              items: timeOptions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 10, left: 28, right: 28, top: 10),
            child: DropdownButtonFormField<String>(
              value: selectedHours,
              onChanged: (value) {
                setState(() {
                  selectedHours = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Travel Hours',
              ),
              items: hoursOptions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          ElevatedButton(
            onPressed: getData,
            child: SizedBox(
              width: 162,
              child: Row(
                children: [
                  const Text("    Make a schedule  "),
                  Icon(Icons.timeline_sharp),
                ],
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 231, 135, 129),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
