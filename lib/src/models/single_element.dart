import 'package:flutter/material.dart';

class SingleChemiElement{
  String name;
  String short;
  int count;
  ColorSwatch color;
  String description;
  String uuid;
  int group; // группа
  int period; // период
  int number; //номер в таблице


  SingleChemiElement({this.name, this.short, this.group, this.period, this.number, this.count, this.color, this.description, this.uuid});
}
