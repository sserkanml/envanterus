import 'package:envanterus/core/util/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sayfa Bulunamadı',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
      body: SafeArea(
          child: Center(
              heightFactor: .8,
              child: SvgPicture.asset(context.getPath(
                  type: AssetType.svg, file: "404_error.svg")))),
    );
  }
}
