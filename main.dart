import 'package:flutter/material.dart';

void main() => runApp(calculator());

class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle:true,title: Text('Calculator'),
        backgroundColor: Colors.deepOrangeAccent[200]),
          //backgroundColor: Colors.black,
           body: SafeArea(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          child: Text('0',style:TextStyle(color: Colors.white,fontSize: 50),),

                          ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.black54,
                          child: Text('0',style:TextStyle(color: Colors.white,fontSize: 50),),

                          ),
                      ),
                      Container(
                        child: Row(children: <Widget>[
                          button(
                            txt: 'AC',
                          ),
                          button(
                            txt: 'C',
                          ),
                          button(
                            txt: '+/-',
                          ),
                          button(
                            txt: '/',
                          )

                        ],),
                      )

                    ],),
           )
        ),
      
    );
      
    
  }
}

class button extends StatelessWidget {
  button({this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: (){},child:Text(txt,style: TextStyle(color:Colors.blueAccent,fontSize: 31)));
  }
}
