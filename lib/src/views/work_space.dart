import 'package:chemikitchen/src/data/data_provider.dart';
import 'package:chemikitchen/src/views/spawn_area/spawn.dart';
import 'package:chemikitchen/src/views/target_area/target.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorkSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(child: Container(
            color: Colors.orange[100],
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Score: 0"),
                ),
                Spacer(),
                IconButton(icon: Icon(Icons.find_replace), onPressed: (){},),
                IconButton(icon: Icon(Icons.hot_tub), onPressed: (){},),
                IconButton(icon: Icon(Icons.cloud), onPressed: (){},),
                IconButton(icon: Icon(Icons.radio_button_checked), onPressed: (){},),
                IconButton(icon: Icon(Icons.error_outline), onPressed: (){},),
                Spacer(),
              ],
            ),
          ),),
          Expanded(
              flex: 15,
              child: Column(children: <Widget>[
              Expanded(child: SpawnArea()),
              Expanded(child: TargetArea(title: "SingleElement", color: Colors.orange[400], elements: Provider.of<ChemiData>(context).singleElements,)),
              Expanded(child: TargetArea(title: "ComplexElements", color: Colors.orange[800], elements: Provider.of<ChemiData>(context).complexElement,)),
            ],),
          ),
        ],
      ),
    );
  }
}