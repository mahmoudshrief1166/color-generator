import 'package:color_generator/domain/entities/color_entity.dart';
import 'package:color_generator/domain/repositories/base_color_repository.dart';

/// Use case to generate a random color.
class GenerateRandomColorUsecase {
  /// Repository used to fetch colors.
  final BaseColorRepository baseColorRepository;

  /// Creates a [GenerateRandomColorUsecase]
  ///  with the given [baseColorRepository].
  GenerateRandomColorUsecase(this.baseColorRepository);

  /// Executes the use case to get a random [ColorEntity].
  ColorEntity call() {
    return baseColorRepository.generateRandomColor();
  }
}
