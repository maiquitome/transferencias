import 'package:flutter/material.dart';

import './transfers_page.dart';

void main() {
  runApp(TransferApp());
}

class TransferApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransfersPage(),
    );
  }
}
