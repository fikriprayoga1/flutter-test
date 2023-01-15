import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/viewmodel/viewmodel_home.dart';

void main() {
  test('Counter value should be incremented', () async {
    int counter = 0;
    counter = await ViewmodelHome().incrementCounter(counter: counter);
    expect(counter, 1);
  });
}
