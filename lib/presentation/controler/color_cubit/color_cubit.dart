import 'package:color_generator/domain/usecases/generate_random_color_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'color_state.dart';

/// Cubit to manage color state and tap counter.
class ColorCubit extends Cubit<ColorState> {
  /// Use case to generate a random color.
  final GenerateRandomColorUsecase generateRandomColorUsecase;

  /// Creates a [ColorCubit] with the given [generateRandomColorUsecase].
  ColorCubit(this.generateRandomColorUsecase) : super(ColorInitialState());

  /// Changes the current color to a new random color and updates the counter.
  void changeColor() {
    final newColor = generateRandomColorUsecase();

    // If already in ChangeColorState, update the color and increment counter
    if (state is ChangeColorState) {
      final current = state as ChangeColorState;
      emit(
        current.copyWith(color: newColor.color, counter: current.counter + 1),
      );
    } else {
      // If in initial state, switch to ChangeColorState
      emit(ChangeColorState(color: newColor.color, counter: 1));
    }
  }
}
