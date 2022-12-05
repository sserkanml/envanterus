import 'package:envanterus/core/util/path.dart';
import 'package:envanterus/feature/root/model/inventory_summary_model.dart';
import 'package:envanterus/feature/root/view_model/items_create_view_model.dart';
import 'package:envanterus/feature/root/view_model/items_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';

class ItemsView extends StatefulWidget {
  const ItemsView({Key? key}) : super(key: key);

  @override
  State<ItemsView> createState() => _ItemsViewState();
}

class _ItemsViewState extends State<ItemsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ItemsCreateScreenViewModel.getShowModel(context: context);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: appbar(context),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 24,
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
            Expanded(
                child: Card(
              elevation: 24,
              margin: EdgeInsets.zero,
              child: SizedBox(
                width: context.dynamicWidth(1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          icon: Icon(
                            Icons.sort,
                            color: context.colorScheme.onSurface,
                            size: 14,
                          ),
                          onPressed: () {},
                          label: Text(
                            "Son Güncellenler",
                            style: context.textTheme.bodySmall!.copyWith(),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            context.getPath(
                                type: AssetType.svg,
                                file: "dashboardsolid.svg"),
                            width: 20,
                            height: 20,
                            color: context.colorScheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      title: Text(
        'Malzemeler',
        style: context.textTheme.bodyLarge!
            .copyWith(color: context.colorScheme.onSurface),
      ),
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
