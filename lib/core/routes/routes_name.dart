enum RoutesName {
  splash,
  login,
  home,
  pickuplist,
  deliveries,
  deliveriesdetail,
  route,
  deliverySummary,
  attendance,
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
      case RoutesName.pickuplist:
        return 'pickuplist';
      case RoutesName.deliveries:
        return 'deliveries';
      case RoutesName.deliveriesdetail:
        return 'deliveriesdetail';
      case RoutesName.route:
        return 'route';
      case RoutesName.deliverySummary:
        return 'delivery-summary';
      case RoutesName.attendance:
        return 'attendance';
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
      case RoutesName.pickuplist:
        return '/pickuplist';
      case RoutesName.deliveries:
        return '/deliveries';
      case RoutesName.deliveriesdetail:
        return '/deliveriesdetail';
      case RoutesName.route:
        return '/route';
      case RoutesName.deliverySummary:
        return '/delivery-summary';
      case RoutesName.attendance:
        return '/attendance';
    }
  }
}
