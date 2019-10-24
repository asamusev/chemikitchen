import 'package:chemikitchen/src/models/single_element.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class SetSingleElements{
  static SingleChemiElement hydrogen({count = 1}) => SingleChemiElement(name: "Hydrogen", count: count, short: "H", group: 1, period: 1, number: 1, color: Colors.red, description: "about hydrogen", uuid: Uuid().v4());
  static SingleChemiElement oxygen({count = 1}) => SingleChemiElement(name: "Oxygen", count: count, short: "O", group: 6, period: 2, number: 8, color: Colors.cyan, description: "about oxygen", uuid: Uuid().v4());
  static SingleChemiElement carbon({count = 1}) => SingleChemiElement(name: "Carbon", count: count, short: "C", group: 4, period: 2, number: 6, color: Colors.grey, description: "about carbon", uuid: Uuid().v4());
  static SingleChemiElement nitrogen({count = 1}) => SingleChemiElement(name: "Nitrogen", count: count, short: "N", group: 5, period: 2, number: 7, color: Colors.purple, description: "about nitrogen", uuid: Uuid().v4());
  static SingleChemiElement lithium({count = 1}) => SingleChemiElement(name: "Lithium", count: count, short: "Li", group: 1, period: 2, number: 7, color: Colors.purple, description: "about nitrogen", uuid: Uuid().v4());
  static SingleChemiElement natrium({count = 1}) => SingleChemiElement(name: "Natrium", count: count, short: "Na", group: 1, period: 3, number: 7, color: Colors.purple, description: "about nitrogen", uuid: Uuid().v4());



}