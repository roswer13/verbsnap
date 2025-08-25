import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:verbsnap/src/presentation/presentation.dart';

void main() {
  group('ButtonBase', () {
    testWidgets('renders with given text and triggers onPressed', (
      WidgetTester tester,
    ) async {
      // Arrange
      bool pressed = false;
      // Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ButtonBase(
              text: 'Test Button',
              onPressed: () {
                pressed = true;
              },
            ),
          ),
        ),
      );
      // Assert
      expect(find.text('Test Button'), findsOneWidget);
      await tester.tap(find.byType(ButtonBase));
      await tester.pumpAndSettle();
      expect(pressed, isTrue);
    });

    testWidgets('shows loading indicator when isLoading is true', (
      WidgetTester tester,
    ) async {
      // Arrange
      // Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ButtonBase(
              text: 'Loading Button',
              onPressed: () {},
              isLoading: true,
            ),
          ),
        ),
      );
      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.text('Loading Button'), findsNothing);
    });
  });

  testWidgets('is disabled when isDisabled is true', (
    WidgetTester tester,
  ) async {
    // Arrange
    bool pressed = false;
    // Act
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ButtonBase(
            text: 'Disabled Button',
            onPressed: () {
              pressed = true;
            },
            isDisabled: true,
          ),
        ),
      ),
    );
    // Assert
    final button = tester.widget<MaterialButton>(find.byType(MaterialButton));
    expect(button.onPressed, isNull);

    await tester.tap(find.byType(ButtonBase));
    await tester.pumpAndSettle();
    expect(pressed, isFalse);
  });

  testWidgets('is disabled when isLoading is true', (
    WidgetTester tester,
  ) async {
    // Arrange
    bool pressed = false;
    // Act
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ButtonBase(
            text: 'Loading Button',
            onPressed: () {
              pressed = true;
            },
            isLoading: true,
          ),
        ),
      ),
    );
    // Assert
    final button = tester.widget<MaterialButton>(find.byType(MaterialButton));
    expect(button.onPressed, isNull);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.tap(find.byType(ButtonBase));
    await tester.pump();
    expect(pressed, isFalse);
  });

  testWidgets('applies custom width', (WidgetTester tester) async {
    // Arrange
    const customWidth = 200.0;
    // Act
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ButtonBase(
            text: 'Width Button',
            onPressed: () {},
            width: customWidth,
          ),
        ),
      ),
    );
    // Assert
    final button = tester.widget<MaterialButton>(find.byType(MaterialButton));
    expect(button.minWidth, customWidth);
  });
}
