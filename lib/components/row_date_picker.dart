import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RowDatePicker extends StatefulWidget {
      RowDatePicker({Key key, }) : super(key: key);

    DateTime dateTime = DateTime.now();

DateTime getDateTime(){
  return dateTime;
}
  @override
  _MyDatePicker createState() => _MyDatePicker();
}

class _MyDatePicker extends State<RowDatePicker> {

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
        title: Text("widget.title"),
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