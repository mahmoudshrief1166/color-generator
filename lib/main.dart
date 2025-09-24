import 'package:color_generator/core/services/service_locator.dart';
import 'package:color_generator/my_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator.init();
  runApp(const MyApp());
}
