import 'package:flutter/material.dart';

import '../../../transfers/transfer/model/transfer_model.dart';

class TransferCard extends StatelessWidget {
  const TransferCard(
    this._transferModel, {
    Key key,
  }) : super(key: key);

  final TransferModel _transferModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('${_transferModel.value}'),
        subtitle: Text('Destinatário: ${_transferModel.accountNumber}'),
      ),
    );
  }
}