import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:envanterus/core/util/path.dart';
import 'package:envanterus/feature/settings/model/settings_navigate_model.dart';
import 'package:envanterus/feature/settings/view_model/scrool_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  late ScrollController controller;

  @override
  void initState() {
    controller = ScrollController(
        initialScrollOffset: ScroolGenerator.scroolModel.scroolPosition,
        keepScrollOffset: false);
    controller.addListener(() {
      ScroolGenerator.scroolModel.changePosition(controller.position.pixels);
    });
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                  radius: 40,
                  backgroundColor: context.colorScheme.primary.withOpacity(.1),
                  child: Text(
                    'SN',
                    style: context.textTheme.headline5,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Serkan Namlı',
              style: context.textTheme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Bisod',
              style: context.textTheme.bodySmall!,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: context.dynamicWidth(.9),
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Yükseltme Seçenekleri",
                  style: context.textTheme.bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {
                if (AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark) {
                  AdaptiveTheme.of(context).setLight();
                } else {
                  AdaptiveTheme.of(context).setDark();
                }
              },
              trailing: Checkbox(
                  value:
                      AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark
                          ? true
                          : false,
                  onChanged: (value) {}),
              title: Text("Karanlık Mod",
                  style: context.textTheme.bodyMedium!
                      .copyWith(color: context.colorScheme.onSurfaceVariant)),
            ),
            ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: context.colorScheme.onSurface.withOpacity(.08),
                  height: 1,
                );
              },
              itemCount: settingsdata.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    controller.jumpTo(0);
                    context.push("/settings/${settingsdata[index].path}");
                  },
                  leading: SvgPicture.asset(
                    context.getPath(
                        file: settingsdata[index].image, type: AssetType.svg),
                    width: 20,
                    height: 20,
                    color: context.colorScheme.onSurface,
                  ),
                  title: Text(settingsdata[index].title,
                      style: context.textTheme.bodyMedium!.copyWith(
                          color: context.colorScheme.onSurfaceVariant)),
                );
              },
              primary: false,
              shrinkWrap: true,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Versiyon 1.0.0',
              style: context.textTheme.bodyMedium!.copyWith(
                  color: context.colorScheme.onSurface.withOpacity(.8)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text('From Bisod',
                style: context.textTheme.bodySmall!.copyWith(
                    color: context.colorScheme.onSurface.withOpacity(.5))),
          ],
        ),
      )),
    );
  }
}
