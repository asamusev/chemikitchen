import 'package:chemikitchen/src/models/single_element.dart';
import 'package:flutter/material.dart';

class ComplexChemiElement{
  String name;
  String short;
  int count;
  ColorSwatch color;
  String description;
  List<SingleChemiElement> compaund;
  ComplexChemiElement({this.name, this.short, this.count, this.color, this.description, this.compaund});
}