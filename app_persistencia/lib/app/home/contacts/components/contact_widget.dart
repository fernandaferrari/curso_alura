import 'package:app_persistencia/app/model/contact_model.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final ContactModel contact;

  const ContactWidget({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.name.toString()),
        subtitle: Text('${contact.account_number}'),
      ),
    );
  }
}
