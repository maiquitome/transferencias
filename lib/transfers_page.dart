import 'package:flutter/material.dart';

import './transfer_card.dart';
import './transfer_model.dart';
import './transfers_model.dart';
import './transfer_page.dart';

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
        onPressed: () async {
          final Future<TransferModel> _transfer = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TransferPage(),
            ),
          );

          if (_transfer != null)
            _transfer.then((value) {
              setState(() {
                widget._transfersModel.transfers.add(value);
              });
            });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
