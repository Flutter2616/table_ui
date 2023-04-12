import 'package:flutter/material.dart';
import 'package:table_ui/screen.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Tablescreen(),
      },
    ),
  );
}