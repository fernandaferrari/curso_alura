import 'package:app_persistencia/app/model/contact_model.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberCountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nome Completo'),
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              controller: _numberCountController,
              decoration: InputDecoration(labelText: 'Nº Conta'),
              style: TextStyle(fontSize: 20),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: RaisedButton(
                onPressed: () {
                  final String name = _nameController.text;
                  final int? accountNumber =
                      int.tryParse(_numberCountController.text);
                  final ContactModel newContact =
                      ContactModel(0, name, accountNumber!);
                  Navigator.pop(context, newContact);
                },
                child: Text('Create'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
