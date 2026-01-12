import 'base_screen.dart';
import '../auth/auth_state.dart';

class ProfileScreen implements BaseScreen{
  final String username;

  ProfileScreen({required this.username});

  @override
  String get route => '/profile';

  @override
  String get screenName => 'Profile';

  @override
  bool canOpen(AuthState authState) => authState.isLoggedIn;

  @override
  void onInit() => print('[$screenName] init for $username');

  @override
  String build() => 'Profile of $username';


}