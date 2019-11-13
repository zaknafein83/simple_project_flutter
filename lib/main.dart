import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Primo Template App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  DateTime _dateTime = DateTime.now();



  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat("dd MM yyyy");

    void  getData(BuildContext context) async{
    var dataScelta = await showDatePicker(
        context: context,
        initialDate: _dateTime,
        firstDate: DateTime(1900),
        lastDate: DateTime(2050),
      );
    if (dataScelta != null) setState(() => _dateTime = dataScelta); 


    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(            
        mainAxisAlignment: MainAxisAlignment.center,
        children : <Widget>[
          Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Data selezionata: ' + formatter.format(_dateTime),
              ),
              IconButton(
                icon: Icon( Icons.date_range),
                onPressed: () => getData(context),
              ),
            ],
          ),
        ]),
      ); 
  }
}