import 'package:color_generator/domain/entities/color_entity.dart';

/// Base repository contract for color operations in the domain layer.
abstract class BaseColorRepository {
  /// Generates a random color.
  ColorEntity generateRandomColor();
}
