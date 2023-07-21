import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_app/services/counter_service.dart';
import 'package:stacked_app/views/counter_view.dart';
import 'package:stacked_app/views/home_view.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: Counterview, initial: true),
  MaterialRoute(page: HomeView)
], dependencies: [
  Singleton(classType: CounterService),
  LazySingleton(classType: NavigationService)
])
class App {}
