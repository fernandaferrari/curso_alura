import 'package:app_persistencia/app/home/contacts/components/contact_widget.dart';
import 'package:app_persistencia/app/home/contacts/contact_form.dart';
import 'package:app_persistencia/app/model/contact_model.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  final List<ContactModel> contacts = [];

  ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (_, i) {
            final ContactModel contact = contacts[i];
            return ContactWidget(
              contact: contact,
            );
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => ContactForm(),
                  ),
                )
                .then((newContact) => debugPrint(newContact.toString()));
          },
          child: Icon(Icons.add)),
    );
  }
}
