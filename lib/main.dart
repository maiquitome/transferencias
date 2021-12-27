import 'package:flutter/material.dart';

import 'features/transfers/transfers/pages/transfers_page.dart';

void main() {
  runApp(TransferApp());
}

class TransferApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _primaryColor = Colors.blue[700];
    
    return MaterialApp(
      home: TransfersPage(),
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _primaryColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(_primaryColor),
          ),
        ),
      ),
    );
  }
}
