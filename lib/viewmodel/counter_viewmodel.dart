import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/app/app.router.dart';
import 'package:stacked_app/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterService>();
  goToHome() {
    navigationService.navigateTo(Routes.homeView);
  }

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }
}
