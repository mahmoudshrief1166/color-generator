import 'package:color_generator/core/utils/constants/constants.dart';
import 'package:color_generator/domain/entities/color_entity.dart';
import 'package:flutter/animation.dart';

/// A data model representing a color, extending [ColorEntity].
/// Used in the data layer to map colors from local sources or JSON.
class ColorModel extends ColorEntity {
  /// Creates a [ColorModel] with the given [color].
  const ColorModel({required super.color});

///Factory contractour to create [ColorModel] from json map
  factory ColorModel.fromColor(Map<String, dynamic> json) {
    return ColorModel(
      color: Color.fromARGB(
        Constants.colorNumber,
        json['red'] as int,
        json['blue'] as int,
        json['green'] as int,
      ),
    );
  }
}
