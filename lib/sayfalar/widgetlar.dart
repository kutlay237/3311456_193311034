import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'dart:core';
import 'package:intl/intl.dart';

class Widgetlar extends StatefulWidget {
  const Widgetlar({Key? key}) : super(key: key);

  @override
  State<Widgetlar> createState() => _WidgetlarState();
}

class _WidgetlarState extends State<Widgetlar> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  String _sign = "";

  void getSign(DateTime _selectedDate) {
    if (_selectedDate.month == 1) {
      if (_selectedDate.day < 20)
        _sign = "Burcunuz Oğlak";
      else
        _sign = "Burcunuz Kova";
    } else if (_selectedDate.month == 2) {
      if (_selectedDate.day < 19)
        _sign = "Burcunuz Kova";
      else
        _sign = "Burcunuz Balık";
    } else if (_selectedDate.month == 3) {
      if (_selectedDate.day < 21)
        _sign = "Burcunuz Balık";
      else
        _sign = "Burcunuz Koç";
    } else if (_selectedDate.month == 4) {
      if (_selectedDate.day < 20)
        _sign = "Burcunuz Koç";
      else
        _sign = "Burcunuz Boğa";
    } else if (_selectedDate.month == 5) {
      if (_selectedDate.day < 21)
        _sign = "Burcunuz Boğa";
      else
        _sign = "Burcunuz Gemini";
    } else if (_selectedDate.month == 6) {
      if (_selectedDate.day < 21)
        _sign = "Burcunuz İkizler";
      else
        _sign = "Burcunuz Yengeç";
    } else if (_selectedDate.month == 7) {
      if (_selectedDate.day < 23)
        _sign = "Burcunuz Yengeç";
      else
        _sign = "Burcunuz Aslan";
    } else if (_selectedDate.month == 8) {
      if (_selectedDate.day < 23)
        _sign = "Burcunuz Aslan";
      else
        _sign = "Burcunuz Başak";
    } else if (_selectedDate.month == 9) {
      if (_selectedDate.day < 23)
        _sign = "Burcunuz Başak";
      else
        _sign = "Burcunuz Terazi";
    } else if (_selectedDate.month == 10) {
      if (_selectedDate.day < 23)
        _sign = "Burcunuz Terazi";
      else
        _sign = "Burcunuz Akrep";
    } else if (_selectedDate.month == 11) {
      if (_selectedDate.day < 22)
        _sign = "Burcunuz Akrep";
      else
        _sign = "Burcunuz Yay";
    } else if (_selectedDate.month == 12) {
      if (_selectedDate.day < 22)
        _sign = "Burcunuz Yay";
      else
        _sign = "Burcunuz Oğlak";
    }
   
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: SfDateRangePicker(
        onSelectionChanged: _onSelectionChanged,
        selectionMode: DateRangePickerSelectionMode.single,
        initialSelectedRange: PickerDateRange(
            DateTime.now().subtract(const Duration(days: 4)),
            DateTime.now().add(const Duration(days: 3))),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burcunu Öğren'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              Text(_sign, style: TextStyle(fontSize: 40),),


              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.merge(BorderSide(color: Colors.red),
                        BorderSide(color: Colors.red)),
                    bottom: BorderSide.merge(BorderSide(color: Colors.red),
                        BorderSide(color: Colors.red)),
                    left: BorderSide.merge(BorderSide(color: Colors.red),
                        BorderSide(color: Colors.red)),
                    right: BorderSide.merge(BorderSide(color: Colors.red),
                        BorderSide(color: Colors.red)),
                  ),
                ),
                child: MaterialButton(
                    onPressed: () {
                      void _showDialog() {
                        // flutter defined function
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            // return object of type Dialog
                            return AlertDialog(
                              title: new Text("Dogum tarihinizi secin"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 200,
                                    child: SfDateRangePicker(
                                      onSelectionChanged: _onSelectionChanged,
                                      selectionMode:
                                      DateRangePickerSelectionMode.single,
                                      initialSelectedRange: PickerDateRange(
                                          DateTime.now()
                                              .subtract(const Duration(days: 4)),
                                          DateTime.now()
                                              .add(const Duration(days: 3))),
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  child: Text('Tamam'),
                                  onPressed: () {
                                    setState(() {
                                      getSign(DateTime.parse(_selectedDate));
                                    });
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }


                      _showDialog();
                    },
                    child: Text('Burcunu Öğren')),
                 ),


            ],
          ),
        ),
      ),
    );
  }
}
