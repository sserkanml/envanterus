import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CompanyDetailView extends StatelessWidget {
  const CompanyDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Şirket Detayları',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
    );
  }
}
