import 'package:flutter/material.dart';

import './transfer_card.dart';
import './transfer_model.dart';
import './transfer_page.dart';

class TransfersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Column(
        children: <TransferCard>[
          TransferCard(TransferModel(value: 100.0, accountNumber: 123123123)),
          TransferCard(TransferModel(value: 110.0, accountNumber: 123123123)),
          TransferCard(TransferModel(value: 200.0, accountNumber: 222222222)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TransferPage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
