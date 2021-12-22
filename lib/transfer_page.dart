import 'package:flutter/material.dart';

import './custom_text_form_field.dart';


class TransferPage extends StatelessWidget {
  const TransferPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: Text('Transferência')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              CustomTextFormField(
                prefixIcon: Icon(Icons.account_balance),
                labelText: 'Conta',
                hintText: '000000',
                validator: (String value) {
                  if (value == null || value == '') {
                    return 'Informe o número da conta';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              CustomTextFormField(
                prefixIcon: Icon(Icons.monetization_on),
                labelText: 'Valor',
                hintText: '0.00',
                keyboardType: TextInputType.number,
                validator: (String value) {
                  if (value == '' || value == null) {
                    return 'Informe o valor';
                  }
                  return null;
                },
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.all(16.0),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  onPressed: () => _createsTransfer(_formKey),
                  child: Text('Transferir'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _createsTransfer(GlobalKey<FormState> formKey) {
    if (formKey.currentState.validate()) {}
  }
}
