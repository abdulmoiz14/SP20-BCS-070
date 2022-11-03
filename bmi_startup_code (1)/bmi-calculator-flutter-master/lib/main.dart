import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          children : <Widget>[
            Expanded(child: Row(
              children : <Widget>[
                Expanded(child: repeatContainer(
                  colors : Color(0xFF101E33),
                ),),
                Expanded(child:repeatContainer(
                  colors : Color(0xFF101E33),
                ),),
              ],
            ), ),
            Expanded(child: repeatContainer(
              colors : Color(0xFF101E33),
            ), ),
            Expanded(child: Row(
              children : <Widget>[
                Expanded(child:repeatContainer(
                  colors : Color(0xFF101E33),
                ),),
                Expanded(child:repeatContainer(
                  colors : Color(0xFF101E33),
                ),),
              ],
            ),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class repeatContainer extends StatelessWidget {

  repeatContainer({this.colors});
  Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin : EdgeInsets.all(15.0),
      decoration : BoxDecoration(
        color : colors,
        borderRadius : BorderRadius.circular(10.0),
      ),
    );
  }
}
