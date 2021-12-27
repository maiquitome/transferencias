import 'package:flutter/material.dart';

import '../../transfers/widgets/transfer_card.dart';
import '../../transfer/model/transfer_model.dart';
import '../models/transfers_model.dart';
import '../../transfer/pages/transfer_page.dart';

class TransfersPage extends StatefulWidget {
  // Valores que não vão mudar ficam no StatefulWidget
  // vai ser sempre TransfersModel
  final TransfersModel _transfersModel = TransfersModel(
    transfers: <TransferModel>[],
  );

  @override
  _TransfersPageState createState() => _TransfersPageState();
}

class _TransfersPageState extends State<TransfersPage> {
  // valores que vão mudar podem ser colocados aqui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transfersModel.transfers.length,
        itemBuilder: (BuildContext context, int index) {
          TransferModel _transferModel =
              widget._transfersModel.transfers[index];

          return TransferCard(_transferModel);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<TransferModel> _transfer = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TransferPage(),
            ),
          );

          _transfer.then((value) => updateTransfers(value));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void updateTransfers(TransferModel transferModel) {
    if (transferModel != null) {
      setState(() {
        widget._transfersModel.transfers.add(transferModel);
      });
    }
  }
}
