import 'package:color_generator/presentation/controler/color_cubit/color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///Home page class widget that display hello there and chang color with
///animation
class HomePage extends StatelessWidget {

  ///Create home page
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorState>(
      builder: (context, state) {
        return Scaffold(
          body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => context.read<ColorCubit>().changeColor(),
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              color: state.color,
              child: Center(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 600),
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: FadeTransition(opacity: animation, child: child),
                    );
                  },
                  child: Column(
                    key: ValueKey(
                      state.counter,
                    ),
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello There',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: state.color == Colors.white
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Tapped ${state.counter} times',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: state.color == Colors.white
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
