import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({
    Key? key,
    required this.title,
    required this.isCheckChange,
    required this.isChecked,
  }) : super(key: key);

  final bool isChecked;
  final String title;
  final VoidCallback isCheckChange;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _isChecked = false;

  @override
  void initState() {
    _isChecked = widget.isChecked;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: widget.isChecked,
      title: Text(widget.title),
      onChanged: (bool? valueChanged) {
        setState(() {
          _isChecked = !_isChecked;
        });
        widget.isCheckChange();
      },
    );
  }
}
