// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Searchbox extends StatelessWidget {
  const Searchbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff14181d).withValues(alpha: 0.6),
      ),
      width: double.maxFinite,
      height: 45,
      child: Row(
        children: [
          SizedBox(width: 15),
          Icon(Icons.search, color: Color(0xff4a4e52), size: 20),
          Expanded(
            child: TextFormField(
              enableSuggestions: false,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                focusColor: Colors.white,
                hintText: 'Find Your Coffee',
                hintStyle: TextStyle(color: Color(0xff4a4e52), fontSize: 13),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
