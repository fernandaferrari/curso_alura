class ContactModel {
  final int? id;
  final String? name;
  final int? account_number;

  ContactModel(
    this.id,
    this.name,
    this.account_number,
  );

  @override
  String toString() {
    return 'Contact{id: $id, name: $name, accountNumber: $account_number}';
  }
}
