import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

////// A domain entity representing a color.
/// Extends [Equatable] to enable value equality.
class ColorEntity extends Equatable {
  ///Color value
  final Color color;

  @override
  List<Object?> get props => [color];

  ///Create [ColorEntity] with the given color
  const ColorEntity({required this.color});
}
