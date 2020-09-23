import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1=0,num2=0,sum=0;

  final TextEditingController t1 =new TextEditingController(text:"");
  final TextEditingController t2 =new TextEditingController(text:"");

  void doAddition(){
    setState(() {
      num1= int.parse(t1.text);
      num2= int.parse(t2.text);
      sum=num1+num2;
    });
  }

  void doSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2= int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void doMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2= int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void doDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2= int.parse(t2.text);
      sum=num1~/num2;
    });
  }
  void doPow(){
    setState(() {

      num1 = int.parse(t1.text);
      num2= int.parse(t2.text);
      var p=1;
      for(int i=0;i< num2;i++){
        p=p*num1;
      }
      sum=p;
    });
  }

  void doClear(){
    setState(() {
      t1.text=("");
      t2.text="";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("calculator"),
        backgroundColor: Colors.teal,
      ),
      body:new Container(
        color: Colors.grey[300],
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            new Text(
              "Output: $sum",
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight:FontWeight.bold,
                color: Colors.black
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter the 1st Number",
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[400]),


              ),
              controller: t1,style: new TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Enter the 2nd Number",
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[400]),

              ),
              controller: t2,style: new TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                new MaterialButton(
                  child: new Text("+",style: new TextStyle(fontSize:25.0,color:Colors.grey[800]),),


                  color:Colors.grey[350],
                  onPressed:doAddition,
                ),
                new MaterialButton(
                  child: new Text("Pow",style: new TextStyle(fontSize:25.0,color:Colors.grey[800]),),
                  color:Colors.grey[350],
                  onPressed:doPow,
                ),
                new MaterialButton(
                  child: new Text("-",style: new TextStyle(fontSize:25.0,color:Colors.grey[800]),),
                  color:Colors.grey[350],
                  onPressed:doSub,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                new MaterialButton(
                  child: new Text("*",style: new TextStyle(fontSize:25.0,color:Colors.grey[800]),),
                  color:Colors.grey[350],
                  onPressed:doMul,
                ),
                new MaterialButton(
                  child: new Text("/",style: new TextStyle(fontSize:25.0,color:Colors.grey[800]),),
                  color:Colors.grey[350],
                  onPressed:doDiv,
                ),

              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 0.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                new MaterialButton(
                  child: new Text("clear",style: new TextStyle(fontSize:25.0,color:Colors.grey[800]),),
                  color:Colors.grey[350],
                  onPressed:doClear,
                ),


              ],
            ),

          ],
        ),
      ),
    );
  }
}
