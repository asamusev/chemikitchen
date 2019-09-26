import 'package:chemikitchen/src/data/sets/elemets.dart';
import 'package:chemikitchen/src/models/complex_element.dart';
import 'package:flutter/material.dart';

class SetComplexElements{
  static ComplexChemiElement water() => ComplexChemiElement(
    name: "Water", 
    count: 1, 
    short: "H20", 
    color: Colors.blue, 
    description: "about wather",
    compaund: [SetSingleElements.hydrogen(count: 2), SetSingleElements.oxygen()]
    );
}

List<ComplexChemiElement> allComplexElements = [
  SetComplexElements.water(),
];