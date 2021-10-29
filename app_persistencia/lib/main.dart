import 'package:app_persistencia/app/databases/app_database.dart';
import 'package:app_persistencia/app/model/contact_model.dart';
import 'package:app_persistencia/app/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  save(ContactModel(1, 'Teste', 1234)).then((id) {
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}
