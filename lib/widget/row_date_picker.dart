import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RowDatePicker extends StatefulWidget {
      RowDatePicker({Key key, this.title, this.message = "Data Selezionata: ", this.dateFormat = "dd MM yyyy"}) : super(key: key);
   final DateTime dateTime = DateTime.now();
  final String title;
  final String dateFormat;
  final String message;
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
    final DateFormat formatter = DateFormat(widget.dateFormat);

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
                widget.message + formatter.format(_dateTime),
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