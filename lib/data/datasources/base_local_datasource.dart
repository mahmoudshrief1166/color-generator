import 'dart:math';
import 'dart:ui';

import 'package:color_generator/core/utils/constants/constants.dart';
import 'package:color_generator/data/models/color_model.dart';

///Base contract for local data source that generate random color
abstract class BaseLocalDataSource {
  ///Generate random color
  ColorModel generateRandomColors();
}

///Implementiomn of [BaseLocalDataSource] to generate random colors
///using [Random].
class LocalDatasource extends BaseLocalDataSource {
  final Random _random = Random();
  @override
  ColorModel generateRandomColors() {
    return ColorModel(
      color: Color.fromARGB(
        Constants.opacity,
        _random.nextInt(Constants.colorNumber),
        _random.nextInt(Constants.colorNumber),
        _random.nextInt(Constants.colorNumber),
      ),
    );
  }
}
