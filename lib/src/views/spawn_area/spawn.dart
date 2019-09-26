import 'package:chemikitchen/src/data/data_provider.dart';
import 'package:chemikitchen/src/models/single_element.dart';
import 'package:chemikitchen/src/views/elements/single.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SpawnArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[200], 
      child: Column(
        children: <Widget>[
          Center(child: Text("Element spawn area")),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Draggable<SingleChemiElement>(
                data: Provider.of<ChemiData>(context).current,
                child: SingleElement(element: Provider.of<ChemiData>(context).current,), 
                feedback: SingleElement(element: Provider.of<ChemiData>(context).current,), 
                childWhenDragging: Text(Provider.of<ChemiData>(context).current.name),
                onDragCompleted: (){ Provider.of<ChemiData>(context).nextElement();},
                onDragEnd: (e){},
                onDragStarted: (){},
                onDraggableCanceled: (v, o){},
                ),
                ],),
          Spacer(),
        ],
      ),
      );
  }
}