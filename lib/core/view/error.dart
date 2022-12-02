import 'package:envanterus/core/util/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sayfa Bulunamadı'),
      ),
      body: SafeArea(
          child: Center(
              child: SvgPicture.asset(context.getPath(
                  type: AssetType.svg, file: "404_error.svg")))),
    );
  }
}
