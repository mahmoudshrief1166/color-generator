part of 'color_cubit.dart';

/// Base state class for [ColorCubit].
sealed class ColorState {
  /// Current color of the background.
  final Color color;

  /// Number of taps performed.
  final int counter;

  /// Creates a [ColorState] with [color] and [counter].
  ColorState({required this.color, required this.counter});

  /// Returns a new [ColorState] with updated values.
  ColorState copyWith({Color? color, int? counter});
}

/// Initial state with white color and counter 0.
class ColorInitialState extends ColorState {
  /// Creates the initial state.
  ColorInitialState() : super(color: Colors.white, counter: 0);

  @override
  ColorState copyWith({Color? color, int? counter}) {
    // Switch to ChangeColorState to allow updating color and counter
    return ChangeColorState(
      color: color ?? this.color,
      counter: counter ?? this.counter,
    );
  }
}

/// State representing a changed color and updated counter.
class ChangeColorState extends ColorState {
  /// Creates a [ChangeColorState] with [color] and [counter].
  ChangeColorState({required super.color, required super.counter});

  @override
  ColorState copyWith({Color? color, int? counter}) {
    return ChangeColorState(
      color: color ?? this.color,
      counter: counter ?? this.counter,
    );
  }
}
