import 'package:envanterus/core/util/path.dart';
import 'package:envanterus/feature/settings/model/custom_input_model.dart';
import 'package:envanterus/feature/settings/model/suggested_input_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

class CustomFieldView extends StatelessWidget {
  const CustomFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        title: Text(
          'Özel İnputlar',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Önerilenler'),
            ),
            ...List.generate(
              suggestedInputdata.length,
              (index) {
                return ListTile(
                  subtitle: Text(suggestedInputdata[index].subtitle ?? "",
                      style: context.textTheme.bodySmall),
                  onTap: () {},
                  leading: SvgPicture.asset(
                    context.getPath(
                        file: suggestedInputdata[index].image,
                        type: AssetType.svg),
                    width: 20,
                    height: 20,
                    color: context.colorScheme.onSurface,
                  ),
                  title: Text(
                    suggestedInputdata[index].name,
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Özel Oluştur'),
            ),
            ...List.generate(
              custominputModel.length,
              (index) {
                return ListTile(
                  subtitle: Text(custominputModel[index].subtitle ?? "",
                      style: context.textTheme.bodySmall),
                  onTap: () {},
                  leading: SvgPicture.asset(
                    context.getPath(
                        file: custominputModel[index].image,
                        type: AssetType.svg),
                    width: 20,
                    height: 20,
                    color: context.colorScheme.onSurface,
                  ),
                  title: Text(
                    custominputModel[index].name,
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
