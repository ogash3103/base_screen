import 'base_screen.dart';
import '../auth/auth_state.dart';

class LoginScreen implements BaseScreen {
  @override
  String get route => '/login';

  @override
  String get screenName => 'Login';

  @override
  bool canOpen(AuthState authState) => !authState.isLoggedIn;

  @override
  void onInit() => print('[$screenName] init');

  @override
  String build() => 'Please login';


}