enum RoutesName {
  splash,
  login,
  home,
}

extension RoutesNameHelper on RoutesName {
  String get name {
    switch (this) {
      case RoutesName.splash:
        return 'splash';
      case RoutesName.login:
        return 'loginSignup';
      case RoutesName.home:
        return 'home';
    }
  }

  String get path {
    switch (this) {
      case RoutesName.splash:
        return '/splash';
      case RoutesName.login:
        return '/loginSignup';
      case RoutesName.home:
        return '/home';
    }
  }
}
