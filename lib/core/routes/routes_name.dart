enum RoutesName { splash, login, home, attendance, deliverySummary }

extension RoutesNameHelper on RoutesName {
  String get name {
    switch (this) {
      case RoutesName.splash:
        return 'splash';
      case RoutesName.login:
        return 'loginSignup';
      case RoutesName.home:
        return 'home';
      case RoutesName.attendance:
        return 'attendance';
      case RoutesName.deliverySummary:
        return 'delivery-summary';
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
      case RoutesName.attendance:
        return '/attendance';
      case RoutesName.deliverySummary:
        return '/delivery-summary';
    }
  }
}
