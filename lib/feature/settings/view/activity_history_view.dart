import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ActivityHistoryView extends StatelessWidget {
  const ActivityHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        'Eylem Geçmişi',
        style: context.textTheme.bodyLarge!
            .copyWith(color: context.colorScheme.onSurface),
      ),
    ));
  }
}
