import 'package:color_generator/data/datasources/base_local_datasource.dart';
import 'package:color_generator/data/repositories/color_repository.dart';
import 'package:color_generator/domain/repositories/base_color_repository.dart';
import 'package:color_generator/domain/usecases/generate_random_color_usecase.dart';
import 'package:color_generator/presentation/controler/color_cubit/color_cubit.dart';
import 'package:get_it/get_it.dart';

/// Global service locator using GetIt for dependency injection.
final sl = GetIt.instance;

/// Configures and registers all dependencies for the app.
class ServiceLocator {
  /// Initializes all services, repositories, use cases, and cubits.
  static Future<void> init() async {
    //repo
    sl.registerLazySingleton<BaseColorRepository>(() => ColorRepository(sl()));
    //datasource
    sl.registerLazySingleton<BaseLocalDataSource>(LocalDatasource.new);
    //usecase
    sl.registerLazySingleton(() => GenerateRandomColorUsecase(sl()));
    //cubit
    sl.registerFactory<ColorCubit>(() => ColorCubit(sl()));
  }
}
