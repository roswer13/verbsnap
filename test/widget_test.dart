import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Testing addition', (WidgetTester tester) async {
    // Arrange
    const value1 = 1;
    const value2 = 2;
    // Act
    const expectedValue = 3;
    // Assert
    expect(value1 + value2, expectedValue);
  });
}
