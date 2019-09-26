import 'package:chemikitchen/src/models/single_element.dart';

bool equalsElements(SingleChemiElement a, SingleChemiElement b, {bool checkCount = false}){
  if (a.short != b.short){
    return false;
  }

  if (a.name != b.name){
    return false;
  }

  if (checkCount){
    if(a.count != b.count){
      return false;
    }
  }
  return true;
}

bool equalsListElements(List<SingleChemiElement> a, List<SingleChemiElement> b){
  if (a.length != b.length){
    return false;
  }
  a.sort((x, y) => x.name.compareTo(y.name));
  b.sort((x, y) => x.name.compareTo(y.name));

  for (int i = 0; i < a.length; i++){
    if(!equalsElements(a[i], b[i])){
      return false;
    }
  }

  return true;
}
