import 'package:chemikitchen/src/data/sets/elemets.dart';
import 'package:chemikitchen/src/data/sets/staff.dart';
import 'package:chemikitchen/src/models/complex_element.dart';
import 'package:chemikitchen/src/models/single_element.dart';
import 'package:chemikitchen/src/utils/equals.dart';
import 'package:chemikitchen/src/utils/rand_int.dart';
import 'package:flutter/material.dart';

import 'package:uuid/uuid.dart';

class ChemiData with ChangeNotifier {
  var uuid = new Uuid();

  SingleChemiElement _curentElement = SetSingleElements.hydrogen();
  List<SingleChemiElement> _singleElements = [
    SetSingleElements.hydrogen(), 
    SetSingleElements.oxygen(), 
    SetSingleElements.carbon(), 
    SetSingleElements.hydrogen(), 
    SetSingleElements.lithium(),
    SetSingleElements.natrium(),
  ];
  List<ComplexChemiElement> _complexElement = [];
  

  List<Oxide> _oxideElement = [];


  
  SingleChemiElement get current => _curentElement;
  List<SingleChemiElement> get singleElements => _singleElements;
  List<ComplexChemiElement> get complexElement => _complexElement;
  List<Oxide> get oxideElement => _oxideElement;

  nextElement(){
    _curentElement = getRandomElement();
    print("current ${_curentElement.name} - ${_curentElement.uuid}");
    notifyListeners();
  }

  static SingleChemiElement getRandomElement(){
    int r = getRandomInt(1, 6);
     switch (r) {
      case 1:
        return SetSingleElements.hydrogen();
        break;
      case 2:
        return SetSingleElements.oxygen();
        break;
      case 3:
        return SetSingleElements.lithium();
        break;
      case 4:
        return SetSingleElements.carbon();
        break;
        case 5:
        return SetSingleElements.natrium();
        break;
      default:
        return SetSingleElements.hydrogen();
    }
  }

  addSingleElement(SingleChemiElement element, int index){
    _singleElements.insert(index, element);
    notifyListeners();
    summSingleElement();
    findComplexElement();
  }

  summSingleElement(){
    SingleChemiElement lastElement;
    List<SingleChemiElement> tempList = [];

    _singleElements.forEach((SingleChemiElement element){
      if (lastElement == null){
        lastElement = element;
      } else{
        if(lastElement.name == element.name){ 
          lastElement.count += element.count;
        } else {
          tempList.add(lastElement);
          lastElement = element;
        }
      }
    });
    tempList.add(lastElement);

    _singleElements.clear();
    _singleElements.addAll(tempList);
    notifyListeners();
  }

  findComplexElement(){
    SingleChemiElement lastElement;
    List<String> deletedElement = [];

    _singleElements.forEach((SingleChemiElement element){
      if (lastElement == null){
        lastElement = element;
      } else{
        allComplexElements.forEach((ComplexChemiElement e){
          if (equalsListElements(e.compaund, [lastElement, element])){
            print("${lastElement.short}${lastElement.count} ${element.short}${element.count} - it is a wather");
            deletedElement.add(element.uuid);
            deletedElement.add(lastElement.uuid);
            _complexElement.add(SetComplexElements.water());
          } else {
              print("${lastElement.short}${lastElement.count} ${element.short}${element.count} - it is NON wather");
          }
        });  
        allOxide.forEach((Oxide e){
          if (equalsListElements(e.compaund, [lastElement, element])){
            print("${lastElement.short}${lastElement.count} ${element.short}${element.count} - it is a Lithium Oxide");
            deletedElement.add(element.uuid);
            deletedElement.add(lastElement.uuid);
            _oxideElement.add(SetOxide.lithiumOxide());
          } else {
              print("${lastElement.short}${lastElement.count} ${element.short}${element.count} - it is NON Lithium Oxide");
          }
        });
        lastElement = element;
      }
    });

    
    

    deletedElement.forEach((uuid){
      _singleElements.removeWhere((e){
          return e.uuid == uuid;
      });
    });


    //_singleElements.removeAt(0);
    //_singleElements.removeAt(0);
    print("______");
    notifyListeners();
  }
}