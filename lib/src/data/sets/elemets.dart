import 'package:chemikitchen/src/models/single_element.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class SetSingleElements{
  static SingleChemiElement hydrogen({count = 1}) => SingleChemiElement(name: "Hydrogen", count: count, short: "H", color: Colors.red, description: "about hydrogen", uuid: Uuid().v4());
  static SingleChemiElement oxygen({count = 1}) => SingleChemiElement(name: "Oxygen", count: count, short: "O", color: Colors.cyan, description: "about oxygen", uuid: Uuid().v4());
  static SingleChemiElement carbon({count = 1}) => SingleChemiElement(name: "Carbon", count: count, short: "С", color: Colors.yellow, description: "about Carbon", uuid: Uuid().v4());
  static SingleChemiElement helium({count = 1}) => SingleChemiElement(name: "Helium", count: count, short: "He", color: Colors.green, description: "about Heliy", uuid: Uuid().v4());
}