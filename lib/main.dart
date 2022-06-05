//Md Borhan uddin
//matric: 1822665
//Layout assignment: part-1

import 'package:flutter/material.dart';
import 'device.dart';
import 'device_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Device> devices = [
    Device("Light", Icons.light),
    Device("Television", Icons.tv),
    Device("Smart Laundry", Icons.local_laundry_service),
    Device("Refrigerator", Icons.kitchen),
    Device("Voice recorder", Icons.keyboard_voice),
    Device("Air Condition", Icons.ac_unit),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Borhan's IoT Smart Home App"),
        ),
        body: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: GridView.count(
            childAspectRatio: (140 / 100),
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: devices.map((device) {
              return DeviceContainer(device);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
