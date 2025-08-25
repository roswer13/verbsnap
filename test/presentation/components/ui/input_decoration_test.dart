import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:verbsnap/src/presentation/presentation.dart';

void main() {
  group('InputDecorations.decoration', () {
    test('returns InputDecoration with correct hintText and labelText', () {
      // Arrange
      const hint = 'Enter your name';
      const label = 'Name';
      // Act
      final decoration = InputDecorations.decoration(
        hintText: hint,
        labelText: label,
      );
      // Assert
      expect(decoration.hintText, hint);
      expect(decoration.labelText, label);
      expect(decoration.prefixIcon, isNull);
      expect(decoration.border, isA<OutlineInputBorder>());
    });

    test('returns InputDecoration with prefixIcon when provided', () {
      // Arrange
      const hint = 'Enter email';
      const label = 'Email';
      const icon = Icons.email;
      // Act
      final decoration = InputDecorations.decoration(
        hintText: hint,
        labelText: label,
        prefixIcon: icon,
      );
      // Assert
      expect(decoration.prefixIcon, isNotNull);
      expect(decoration.prefixIcon, isA<Icon>());
      final iconWidget = decoration.prefixIcon as Icon;
      expect(iconWidget.icon, icon);
    });

    test('returns InputDecoration with null prefixIcon when not provided', () {
      // Arrange
      // Act
      final decoration = InputDecorations.decoration(
        hintText: 'hint',
        labelText: 'label',
      );
      // Assert
      expect(decoration.prefixIcon, isNull);
    });
  });
}
