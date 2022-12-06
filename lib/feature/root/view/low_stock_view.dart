import 'package:envanterus/core/util/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

import '../view_model/items_view_model.dart';

class LowStockView extends StatelessWidget {
  const LowStockView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              ItemsViewModel.getShowBottom(context: context);
            },
            child: SvgPicture.asset(
              context.getPath(
                type: AssetType.svg,
                file: "ellipsis.svg",
              ),
              width: 20,
              height: 20,
              color: context.colorScheme.onSurface,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
        title: Text(
          'Düşük Stok',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
