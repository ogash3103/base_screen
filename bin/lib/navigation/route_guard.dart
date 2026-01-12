import '../screens/base_screen.dart';
import '../auth/auth_state.dart';

class Router {
  final List<BaseScreen> _screens;

  Router(this._screens);


  BaseScreen? findByRoute(String route) {
    for(final screen in _screens) {
      if(screen.route == route) return screen;
    }
    return null;
  }

  void navigateTo({required String route, required AuthState auth}) {
    final screen = findByRoute(route);

    if(screen == null) {
      print('[Router] 404 Not Found: $route');
      return;
    }

    if(!screen.canOpen(auth)){
      print('[Router] Access dined to $route (auth required). Redirect -> /login');

      final login = findByRoute('/login');

      if(login == null) {
        print('[Router] ERROR: Login route is not registered!');
        return;
      }

      login.onInit();
      print(login.build());
      return;
    }

    print('[Router] Navigate -> ${screen.route}');
    screen.onInit();
    print(screen.build());
  }

}