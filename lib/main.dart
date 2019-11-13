import 'package:flutter/material.dart';
import 'package:template_prj/widget/row_date_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var rowDatePicker = RowDatePicker(title: "Title", message: "Non Default message: ", dateFormat: "dd/MM/yy",);
        var materialApp = MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: rowDatePicker,
          
    );
    return materialApp;
  }
}