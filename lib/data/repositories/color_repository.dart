import 'package:color_generator/data/datasources/base_local_datasource.dart';
import 'package:color_generator/domain/entities/color_entity.dart';
import 'package:color_generator/domain/repositories/base_color_repository.dart';

/// Repository that implements [BaseColorRepository] to provide color data.
class ColorRepository extends BaseColorRepository {
  /// Local data source used to generate colors.
  final BaseLocalDataSource localDataSource;

  /// Creates a [ColorRepository] with the given [localDataSource].
  ColorRepository(this.localDataSource);
  @override
  ColorEntity generateRandomColor() {
    return localDataSource.generateRandomColors();
  }
}
