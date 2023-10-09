import 'package:flutter/material.dart';

class MyChip extends StatefulWidget {
  bool IsSelected = false;
  String Name = "";
  MyChip({required this.Name , required this.IsSelected});

  @override
  State<MyChip> createState() => _MyChipState();
}

class _MyChipState extends State<MyChip> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ChoiceChip(
        label: Text(
          widget.Name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
              color: widget.IsSelected ? const Color(0xff6941C6): const Color(0XFF667085)),
        ),
        selected: widget.IsSelected,
        color: MaterialStateColor.resolveWith((states) => const Color(0XFFE4E7EC)),
        selectedColor: const Color(0xffF4EBFF),
        onSelected: (newState) {
          setState(() {
            widget.IsSelected = newState;
          });
        },
      ),
    );
  }
}