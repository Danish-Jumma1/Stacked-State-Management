import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/viewmodel/counter_viewmodel.dart';

void main() {
  runApp(const Counterview());
}

class Counterview extends StatelessWidget {
  const Counterview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Counter Value
                  Text(viewModel.counterService.counterValue.toString()),
                  // Counter Value Increment Button
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          viewModel.addValue();
                        },
                        child: const Text("Increment")),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Home Navigation Button
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          viewModel.goToHome();
                        },
                        child: const Text("Go Home")),
                  )
                ],
              ),
            ),
          );
        });
  }
}
