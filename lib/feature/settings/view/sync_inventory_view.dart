import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SyncInventoryView extends StatelessWidget {
  const SyncInventoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Senkronize Envanter',
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
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Senkronize Edilmiş',
                        style: context.textTheme.bodySmall!
                            .copyWith(color: context.colorScheme.onSurface),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '12 saat önce',
                        style: context.textTheme.bodySmall!.copyWith(
                            color: context.colorScheme.onSurface, fontSize: 10),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Senkronize Et",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(.6),
              child: Card(
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            'Destek',
                            style: context.textTheme.bodyLarge!
                                .copyWith(color: context.colorScheme.onSurface),
                          ),
                          CheckboxListTile(
                            value: true,
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              'Wifi',
                              style: context.textTheme.bodySmall!.copyWith(
                                  color: context.colorScheme.onSurface,
                                  fontSize: 10),
                            ),
                            onChanged: (value) {},
                          ),
                          Text(
                            'Bulut',
                            style: context.textTheme.bodyLarge!
                                .copyWith(color: context.colorScheme.onSurface),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              'Bulut Logları',
                              style: context.textTheme.bodySmall!.copyWith(
                                color: context.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: context.dynamicWidth(1),
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Full Senkronize",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
