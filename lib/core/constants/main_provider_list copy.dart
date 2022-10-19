
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../feature/bottom_navigation_bar/view_model/bottom_navigation_bar_controller.dart';
import '../init/injection_container.dart';

class MainProviderList {
  /// This list includes providers that should stand up when the application starts.
  static List<SingleChildWidget> mainProviderlist = [
    ChangeNotifierProvider(create: (_) => sl<BottomNavigationBarProvider>()),
  ];

  /// This method returns the provider list that should stand up at the beginning of the application.
  static List<SingleChildWidget> getMainProviderList() {
    return mainProviderlist;
  }
}
