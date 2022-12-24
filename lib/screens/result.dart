import 'package:flutter/material.dart';
import 'package:flutter_seoul/widgets/back_app_bar.dart';
import 'package:flutter_seoul/widgets/responsive.dart';
import 'package:flutter_seoul/utils/localization.dart' show localization, t;

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    const count = '0';
    var t = localization(context);

    List<Widget> buildCountNumWidgets() {
      return [
        Text(
          t.count,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          count,
          style: Theme.of(context).textTheme.headlineSmall,
        )
      ];
    }

    return Scaffold(
      appBar: BackAppBar(
        title: Text(t.result),
      ),
      body: Center(
        child: Responsive(
          mobile: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildCountNumWidgets(),
          ),
          desktop: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildCountNumWidgets(),
          ),
        ),
      ),
    );
  }
}
