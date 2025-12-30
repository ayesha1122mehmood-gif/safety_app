import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Basic_calculator extends StatefulWidget{
  final String name;
  const Basic_calculator({Key? key,required this.name}):super(key:key);
  State<Basic_calculator> createState()=>_BasicCalculatorState();

}


class _BasicCalculatorState extends State<Basic_calculator> {
  //dynamic data tha es lia this.name karty hn
  @override
  /*var n1 = TextEditingController();
  var n2 = TextEditingController();
  var result;*/
  var namefrommainpage ;
 BasiccalculatorScreen(){
   this.namefrommainpage;
 }//this matlab mujah ye required ha phechly page se value nahi aye gi
  //to nahi chaly ga

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic calculator ",
          style: TextStyle(fontSize: 35,
              color: Colors.blue,
              fontWeight: FontWeight.bold),),
      ),

      /*ConstrainedBox(constraints: BoxConstraints(
        minWidth: 200,
        maxWidth: 650,
        maxHeight: 110,
      ),
        child:ElevatedButton(onPressed: (){

        }, child: Text("click me "),
        )
        Text("this is very intelligent class.this is very intelligent class  " , style: TextStyle(fontSize: 35, color: Colors.green),),

      ),*/




      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("welcom,${widget.name}",style: TextStyle(fontSize: 35,color: Colors.black),),

        ],
      )

    );
  }

}