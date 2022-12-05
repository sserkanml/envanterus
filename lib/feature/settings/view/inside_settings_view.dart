import 'package:envanterus/core/util/path.dart';
import 'package:envanterus/feature/settings/model/preferences_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

class InsideSettingsView extends StatelessWidget {
  const InsideSettingsView({Key? key}) : super(key: key);

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
          children: [
            ...List.generate(
              preferencesdata.length,
              (index) {
                return ListTile(
                  onTap: () {
                    context.push(
                        "/settings/insideSettings/${preferencesdata[index].path}");
                  },
                  title: Text(preferencesdata[index].label),
                  leading: SvgPicture.asset(
                    context.getPath(
                        file: preferencesdata[index].image,
                        type: AssetType.svg),
                    width: 20,
                    height: 20,
                    color: context.colorScheme.onSurface,
                  ),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
