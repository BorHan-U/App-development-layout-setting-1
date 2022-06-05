import 'package:flutter/cupertino.dart';

class Device {
  late String name;
  late IconData icon;
  late List<bool> power;

  //constructor
  Device(String name, IconData icon) {
    this.name = name;
    this.icon = icon;
    this.power = [false];
  }
}
