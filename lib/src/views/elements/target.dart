import 'package:chemikitchen/src/data/data_provider.dart';
import 'package:chemikitchen/src/models/single_element.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TargetElement extends StatelessWidget {
  final int index;

  const TargetElement({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DragTarget<SingleChemiElement>(
      onAccept: (element){
        Provider.of<ChemiData>(context).addSingleElement(element, index+1);
      },
      
      builder: (BuildContext context, List candidateData, List rejectedData) {
        return Container(width: 200, height: 100, child: Center(child: Text("+", style: Theme.of(context).textTheme.title,),),);
      },
    );
  }
}