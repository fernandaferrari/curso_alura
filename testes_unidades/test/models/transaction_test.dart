import 'package:bytebank/models/transaction.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('transaction ...', () async {
    final transaction = Transaction(null, 300, null);

    expect(transaction.value, 300);
  });

  test('Erro na transação quando o valor for menor que zero', () async {
    expect(() => Transaction(null, 0, null), throwsAssertionError);
  });
}
