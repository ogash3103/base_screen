import 'lib/auth/auth_state.dart';
import 'lib/navigation/route_guard.dart';

import 'lib/screens/home_screen.dart';
import 'lib/screens/profile_screen.dart';
import 'lib/screens/login_screen.dart';
import 'lib/screens/base_screen.dart';


void main(){

  final screens = <BaseScreen> [
    HomeScreen(),
    ProfileScreen(username: 'John'),
    LoginScreen(),
  ];

  final router = Router(screens);

  // case 1 login is false

  final auth1 = AuthState(isLoggedIn: false);

  router.navigateTo(route: '/home', auth: auth1);
  print('-----');
  router.navigateTo(route: '/profile', auth: auth1);
  print('=====');

  // case 2 login is true
  final auth2 = AuthState(isLoggedIn: true);

  router.navigateTo(route: '/home', auth: auth2);
  print('-----');
  router.navigateTo(route: '/profile', auth: auth2);
  print('=====');

}