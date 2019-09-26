import 'package:chemikitchen/src/data/data_provider.dart';
import 'package:chemikitchen/src/views/spawn_area/spawn.dart';
import 'package:chemikitchen/src/views/target_area/target.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorkSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Expanded(child: SpawnArea()),
        Expanded(child: TargetArea(title: "SingleElement", color: Colors.orange[400], elements: Provider.of<ChemiData>(context).singleElements,)),
        Expanded(child: TargetArea(title: "ComplexElements", color: Colors.orange[800], elements: Provider.of<ChemiData>(context).complexElement,)),
      ],),
    );
  }
}