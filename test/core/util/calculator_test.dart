import 'package:flutter_test/flutter_test.dart';
import 'package:verbsnap/src/core/util/calculator.dart';

void main() {
  test('Addition works', () {
    // Arrange
    const value1 = 1;
    const value2 = 2;
    final calc = Calculator();
    // Act
    final result = calc.add(value1, value2);
    // Assert
    expect(result, 3);
  });

  test('Subtraction works', () {
    // Arrange
    const value1 = 5;
    const value2 = 2;
    final calc = Calculator();
    // Act
    final result = calc.subtract(value1, value2);
    // Assert
    expect(result, 3);
  });
}
