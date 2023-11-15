import 'package:flutter/material.dart';

class DataPickerWidget extends StatefulWidget {
  const DataPickerWidget({Key? key}) : super(key: key);

  @override
  _DataPickerWidgetState createState() => _DataPickerWidgetState();
}

class _DataPickerWidgetState extends State<DataPickerWidget> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}',
          ),
          ElevatedButton(
            child: const Text('Choose date'),
            onPressed: () async {
              DateTime? dateTime = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(1900),
                lastDate: DateTime(3000),
              );
              if (dateTime != null) {
                setState(() {
                  selectedDate = dateTime;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
