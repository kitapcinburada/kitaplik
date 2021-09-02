import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  Map<String, bool> values = {
    "Okudum": false,
    "Okuyacağım": false,
  };

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: values.keys.map((String key) {
          return CheckboxListTile(
            activeColor: Colors.black,
            title: Text(key),
            value: values[key],
            onChanged: (bool value) {
              setState(() {
                values[key] = value;
              });
            },
          );
        }).toList(),
      ),
    );
  }
}