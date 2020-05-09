import 'package:epidemiologia_latam/ui/views/global/global_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/stats_appbar.dart';

class GlobalView extends StatelessWidget {
  const GlobalView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GlobalViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: StatsBar(callback: model.back),
        body: Center(
          child: Text("Global View"),
        ),
      ),
      viewModelBuilder: () => GlobalViewModel(),
    );
  }
}
