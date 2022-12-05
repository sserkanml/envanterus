import 'package:envanterus/feature/settings/model/help_support_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HelpSupportView extends StatelessWidget {
  const HelpSupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yardım & Destek',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Yardım Merkezi'),
            ),
            ...List.generate(
              helpsupportdata.length,
              (index) {
                return ListTile(
                  onTap: () {},
                  title: Text(
                    helpsupportdata[index].name,
                    style: context.textTheme.bodySmall!
                        .copyWith(color: context.colorScheme.onSurface),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Yasal'),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Kullanım Koşulları",
                style: context.textTheme.bodySmall!
                    .copyWith(color: context.colorScheme.onSurface),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Gizlilik Sözleşmeleri",
                style: context.textTheme.bodySmall!
                    .copyWith(color: context.colorScheme.onSurface),
              ),
            )
          ],
        ),
      )),
    );
  }
}
