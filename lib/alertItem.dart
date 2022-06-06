import 'package:flutter/material.dart';

class AlertItem extends StatefulWidget {
  const AlertItem({Key? key}) : super(key: key);

  @override
  State<AlertItem> createState() => _AlertItemState();
}

class _AlertItemState extends State<AlertItem> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DropdownButton(
          // Initial Value
          value: dropdownvalue,

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),

          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
        TextButton(onPressed: () {
          Navigator.pop(context,dropdownvalue);
        }, child: const Text("Ok"))
      ],
    );
  }
}
