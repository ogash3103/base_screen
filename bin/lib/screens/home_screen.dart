import 'base_screen.dart';
import '../auth/auth_state.dart';

class HomeScreen implements BaseScreen {
  @override
  String get screenName => 'Home';

  @override
  String get route => '/home';

  @override
  bool canOpen(AuthState authState) => true;

  @override
  void onInit() => print('[$screenName] init');

  @override
  String build()  => 'Welcome to Home Screen';

}