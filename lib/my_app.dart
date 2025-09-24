import 'package:color_generator/core/services/service_locator.dart';
import 'package:color_generator/presentation/controler/color_cubit/color_cubit.dart';
import 'package:color_generator/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Main class that represent Material App
class MyApp extends StatelessWidget {
  /// Creates the main application widget.
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => sl<ColorCubit>(),
        child: const HomePage(),
      ),
    );
  }
}
