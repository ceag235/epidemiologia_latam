import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text(model.title),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.navigateToHome,
            child: Icon(Icons.arrow_forward),
          ),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
