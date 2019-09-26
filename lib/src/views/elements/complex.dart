import 'package:chemikitchen/src/models/complex_element.dart';
import 'package:flutter/material.dart';

class ComplexElement extends StatelessWidget {
  final ComplexChemiElement element;

  const ComplexElement({Key key, this.element}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: (){showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            backgroundColor: element.color,
            title: Text(element.name),
            content: Container(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Type: Complex Element"),
                  Text("Formual: ${element.short}"),
                  Text("About: ${element.description}"),
                ],
              ),
            ),
            actions: <Widget>[FlatButton(child: Text("Close"), onPressed: (){Navigator.pop(context);},)],
          );
        }
      );},
          child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          color: element.color
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(element.short, style: Theme.of(context).textTheme.title),
          ],
        ),
          Text(element.name)
        ],),
      ),
    );
  }
}
