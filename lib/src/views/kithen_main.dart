import 'package:chemikitchen/src/data/data_provider.dart';
import 'package:chemikitchen/src/views/work_space.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KithenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chemikitchen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(title: TextStyle(fontSize: 34, color: Colors.white))
      ),
      home: ChangeNotifierProvider<ChemiData>(
        builder: (BuildContext context) =>ChemiData(),
        child: WorkSpace()),
    );
  }
}