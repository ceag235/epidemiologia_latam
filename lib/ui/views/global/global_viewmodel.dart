import 'package:epidemiologia_latam/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GlobalViewModel extends BaseViewModel {
  //  Services
  final NavigationService _navigationService = locator<NavigationService>();

  // Variables

  // Getters

  // View Model interfaces
  void back() {
    _navigationService.back();
  }
}
