import '../auth/auth_state.dart';

abstract class BaseScreen {
  String get screenName;
  String get route;

  bool canOpen(AuthState authState);
  void onInit();
  String build();
}

