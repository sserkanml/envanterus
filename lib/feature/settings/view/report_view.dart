import 'package:envanterus/core/util/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

import '../model/reports_model.dart';

class ReportView extends StatelessWidget {
  const ReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Raporlar',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ...List.generate(
              reportsdata.length,
              (index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 15.0,
                  ),
                  subtitle: Text(reportsdata[index].description,
                      style: context.textTheme.bodySmall),
                  onTap: () {},
                  leading: SvgPicture.asset(
                    context.getPath(
                        file: reportsdata[index].image, type: AssetType.svg),
                    width: 20,
                    height: 20,
                    color: context.colorScheme.onSurface,
                  ),
                  title: Text(
                    reportsdata[index].title,
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}
