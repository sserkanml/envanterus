import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PreferencesView extends StatelessWidget {
  const PreferencesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tercihler',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Duyuru Seçenekleri',
                style: context.textTheme.bodyLarge!
                    .copyWith(color: context.colorScheme.onSurface),
              ),
            ),
            
            CheckboxListTile(
              value: true,
              title: Text('Bildirim Almak', style: context.textTheme.bodySmall),
              onChanged: (value) {},
            ),
            CheckboxListTile(
              value: true,
              title: Text('Email', style: context.textTheme.bodySmall),
              onChanged: (value) {},
            ),
          ],
        ),
      )),
    );
  }
}
