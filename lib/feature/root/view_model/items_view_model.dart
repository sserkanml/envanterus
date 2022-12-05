import 'package:envanterus/core/util/path.dart';
import 'package:envanterus/feature/root/model/show_sheet_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

class ItemsViewModel {
  static void getShowBottom({required BuildContext context}) {
    showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      builder: (context) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
                onTap: () {
                  Future.delayed(
                    const Duration(milliseconds: 100),
                    () {
                      Navigator.pop(context);
                    },
                  );
                  context
                      .push("/items/${showmodalbottomsheetdata[index].route}");
                },
                title: Text(showmodalbottomsheetdata[index].label,
                    style: context.textTheme.bodySmall),
                leading: SvgPicture.asset(
                  context.getPath(
                    type: AssetType.svg,
                    file: showmodalbottomsheetdata[index].image,
                  ),
                  width: 15,
                  height: 15,
                  color: context.colorScheme.onSurface,
                ));
          },
          itemCount: showmodalbottomsheetdata.length,
        );
      },
    );
  }
}
