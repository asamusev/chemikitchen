import 'package:chemikitchen/src/models/single_element.dart';
import 'package:flutter/material.dart';

class ComplexChemiElement{
  String name;
  String short;
  int count;
  ColorSwatch color;
  String description;
  String type;
  List<SingleChemiElement> compaund;
  ComplexChemiElement({this.name, this.type, this.short, this.count, this.color, this.description, this.compaund});
}

class Oxide {
String name;
String short;
int count;
ColorSwatch color;
String description;
String type;
List<SingleChemiElement> compaund;
Oxide({this.name, this.type, this.short, this.count, this.color, this.description, this.compaund});

}


class Acid {
String name;
String short;
int count;
ColorSwatch color;
String description;
String type;
List<SingleChemiElement> compaund;
Acid({this.name, this.type, this.short, this.count, this.color, this.description, this.compaund});

}