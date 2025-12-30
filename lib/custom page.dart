import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("azab"),
        ),
    );
  }

}
