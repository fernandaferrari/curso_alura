import 'package:app_persistencia/app/model/contact_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bank.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute(contact);
    }, version: 1);
  });
}

Future<int> save(ContactModel contact) {
  return createDatabase().then((db) {
    final Map<String, dynamic> contactMap = Map();
    contactMap['name'] = contact.name;
    contactMap['account_number'] = contact.account_number;
    return db.insert('contact', contactMap);
  });
}

Future<List<ContactModel>> findAll() async {
  return createDatabase().then((db) {
    return db.query('contact').then((db) {
      List<Map<String, dynamic>> resultado = db;
      List<ContactModel> produtos = List.generate(resultado.length, (index) {
        var item = resultado[index];
        return ContactModel(item['id'], item['name'], item['account_number']);
      });
      return produtos;
    });
  });
}

String get contact => '''
  CREATE TABLE contact(
    id INTEGER PRIMARY KEY,
    name TEXT,
    account_number INTEGER,
  );
  ''';
