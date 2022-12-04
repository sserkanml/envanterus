import 'package:envanterus/core/util/path.dart';
import 'package:envanterus/feature/root/model/inventory_summary_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: appbar(context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 1,
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      inventorsummarydata.length,
                      (index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                inventorsummarydata[index].title,
                                style: context.textTheme.bodySmall!
                                    .copyWith(fontSize: 12),
                              ),
                            ),
                            Text(
                              inventorsummarydata[index].data,
                              style: context.textTheme.bodySmall!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: context.colorScheme.onSurface),
                            ),
                            const SizedBox(height: 10),
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      title: const Text('Malzemeler'),
      leadingWidth: 30,
      elevation: 2,
      actions: [
        InkWell(
          child: SvgPicture.asset(
            context.getPath(
              type: AssetType.svg,
              file: "search.svg",
            ),
            width: 20,
            height: 20,
            color: context.colorScheme.onSurface,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        InkWell(
          child: SvgPicture.asset(
            context.getPath(
              type: AssetType.svg,
              file: "barcode.svg",
            ),
            width: 20,
            height: 20,
            color: context.colorScheme.onSurface,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        InkWell(
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
        const SizedBox(
          width: 10,
        ),
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: SvgPicture.asset(
          context.getPath(
            type: AssetType.svg,
            file: "sitemap.svg",
          ),
          color: context.colorScheme.onSurface,
          width: 20,
          height: 20,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
