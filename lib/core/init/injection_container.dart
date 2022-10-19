import 'package:get_it/get_it.dart';
import 'package:instagram_clone/feature/bottom_navigation_bar/view_model/bottom_navigation_bar_controller.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => BottomNavigationBarProvider());
}
