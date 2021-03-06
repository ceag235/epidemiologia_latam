import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/locator.dart';
import '../../../app/routes.gr.dart';

class SplashViewModel extends BaseViewModel {
  //  Services
  final NavigationService _navigationService = locator<NavigationService>();

  // Variables
  String _title = "Startup View";

  // Getters
  String get title => _title;

  // Interfaces
  void navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeViewRoute);
  }
}
