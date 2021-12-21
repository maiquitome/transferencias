import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transferências'),
        ),
        body: Transfers(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    ),
  );
}

class Transfers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <TransferCard>[
        TransferCard(Transfer(value: 100.0, accountNumber: 123123123)),
        TransferCard(Transfer(value: 110.0, accountNumber: 123123123)),
        TransferCard(Transfer(value: 200.0, accountNumber: 222222222)),
      ],
    );
  }
}

class TransferCard extends StatelessWidget {
  const TransferCard(
    this._transfer, {
    Key key,
  }) : super(key: key);

  final Transfer _transfer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('${_transfer.value}'),
        subtitle: Text('Destinatário: ${_transfer.accountNumber}'),
      ),
    );
  }
}

class Transfer {
  final double value;
  final int accountNumber;

  Transfer({
    @required this.value,
    @required this.accountNumber,
  });
}
