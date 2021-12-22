import 'package:flutter/material.dart';

import './transfer_model.dart';

class TransferCard extends StatelessWidget {
  const TransferCard(
    this._transfer, {
    Key key,
  }) : super(key: key);

  final TransferModel _transfer;

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