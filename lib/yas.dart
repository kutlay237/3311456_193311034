import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'dart:core';
import 'package:intl/intl.dart';

class Yas extends StatefulWidget {
  const Yas({Key? key}) : super(key: key);

  @override
  State<Yas> createState() => _WidgetlarState();
}

class _WidgetlarState extends State<Yas> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';
  DateTime? selectedDate;


  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {

        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        selectedDate = args.value;
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

  String yasFarki = '';
  void isAdult(String birthDateString) {

    DateTime birthDate = DateTime.parse(birthDateString);
    DateTime today = DateTime.now();
    print(birthDate.year);
    int yearDiff = today.year - birthDate.year;
    yasFarki = 'Yasiniz: ' + yearDiff.toString();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yaşını Hesapla'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              Text(yasFarki, style: TextStyle(fontSize: 40),),


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

                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  child: Text('Tamam'),
                                  onPressed: () {
                                    setState(() {
                                      isAdult(selectedDate.toString());
          print(selectedDate.toString());

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
                    child: Row(mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check),  SizedBox(width: 10,),
                        Text('Yaşını Hesapla'),
                      ],
                    )),
                 ),


            ],
          ),
        ),
      ),
    );
  }
}
