import 'package:stacked/stacked.dart';

class CounterService extends BaseViewModel {
  var counterValue = 0;
  addCounterValue() {
    counterValue++;
    print(counterValue);
  }
}
