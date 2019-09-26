import 'package:chemikitchen/src/models/single_element.dart';
import 'package:chemikitchen/src/views/elements/complex.dart';
import 'package:chemikitchen/src/views/elements/single.dart';
import 'package:chemikitchen/src/views/elements/target.dart';
import 'package:flutter/material.dart';

class TargetArea extends StatelessWidget {
  final String title;
  final List elements;
  final Color color;

  const TargetArea({Key key, this.title, this.elements, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color, 
      child: Column(
        children: <Widget>[
          Center(child: Text(title)),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: elements.length,
              separatorBuilder: (context, index){
                return TargetElement(index: index,);
              },
              itemBuilder: (context, index){
                if (elements[index] is SingleChemiElement){
                  return SingleElement(element: elements[index],);
                }
                return ComplexElement(element: elements[index],);        
              }, 
            ),
          ),
          Spacer(),
        ],
      ),
      );
  }
}