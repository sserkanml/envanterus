import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BulkImportView extends StatelessWidget {
  const BulkImportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Veri Ekleme',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
    );
  }
}
