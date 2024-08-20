import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}
class _DetailsScreenState extends State<DetailsScreen> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Routine...!",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.yellow,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: Container(
        color: Colors.yellow,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCheckboxWithLabel('ExCeRcIsE? ', _isChecked1, (bool? value) {
              setState(() {
                _isChecked1 = value ?? false;
              });
            }),
            SizedBox(height: 20),
            _buildCheckboxWithLabel('Have you eaten?', _isChecked2, (bool? value) {
              setState(() {
                _isChecked2 = value ?? false;
              });
            }),
            SizedBox(height: 20),
            _buildCheckboxWithLabel('Have Your StUdIeD?', _isChecked3, (bool? value) {
              setState(() {
                _isChecked3 = value ?? false;
              });
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckboxWithLabel(String label, bool isChecked, ValueChanged<bool?> onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(width: 10),
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
