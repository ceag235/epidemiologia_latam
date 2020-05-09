import 'package:auto_route/auto_route_annotations.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/splash/splash_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashView splashViewRoute;

  HomeView homeViewRoute;
}
