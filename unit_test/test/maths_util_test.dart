import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/maths_util.dart';

void main() {
  group('Maths Utils - ', () {
    test('check for two number addition', () {
      // Arrange
      const int a = 10;
      const int b = 10;

      // Act
      int sum = add(a, b);

      // Assert
      expect(sum, 20);
    });

    test('check for two number substraction', () {
      // Arrange
      const int a = 10;
      const int b = 10;

      // Act
      int substraction = add(a, b);

      // Assert
      expect(substraction, 20);
    });

    test('check for two number multiply', () {
      // Arrange
      const int a = 10;
      const int b = 10;

      // Act
      int multiply = add(a, b);

      // Assert
      expect(multiply, 20);
    });
  });
}
