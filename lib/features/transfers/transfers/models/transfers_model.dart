import 'package:flutter/widgets.dart';

import '../../transfer/model/transfer_model.dart';

class TransfersModel {
  TransfersModel({
    @required this.transfers,
  });

  List<TransferModel> transfers;
}
