import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

import '../../../core/util/path.dart';
import '../view_model/items_view_model.dart';

class InventorySummaryView extends StatefulWidget {
  const InventorySummaryView({Key? key}) : super(key: key);

  @override
  State<InventorySummaryView> createState() => _InventorySummaryViewState();
}

class _InventorySummaryViewState extends State<InventorySummaryView> {
  bool showFab = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedSlide(
        duration: const Duration(milliseconds: 500),
        offset: showFab ? Offset.zero : const Offset(0, 2),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: showFab ? 1 : 0,
          child: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ),
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
          const SizedBox(
            width: 20,
          )
        ],
        title: Text(
          'Envanter Özeti',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
      body: Column(
        children: <Widget>[
          Card(
            elevation: 3,
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        context.getPath(
                            file: "foldersolid.svg", type: AssetType.svg),
                        width: 15,
                        height: 15,
                        color: context.colorScheme.onSurface,
                      ),
                      const SizedBox(width: 5),
                      const Text('Tüm Dosyalar'),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Toplam Miktar'),
                           const SizedBox(height:5),
                          Text(
                            '103 Birim',
                            style: context.textTheme.bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Toplam Değer'),
                          const SizedBox(height:5),
                          Text(
                            '₺6.54k',
                            style: context.textTheme.bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Herşey'),
                SvgPicture.asset(
                  context.getPath(file: "folder.svg", type: AssetType.svg),
                  width: 15,
                  height: 15,
                  color: context.colorScheme.onSurface,
                ),
              ],
            ),
          ),
          Expanded(
              child: Card(
            elevation: 20,
            margin: EdgeInsets.zero,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('İsim'),
                      Text('Değişiklik Miktarı'),
                    ],
                  ),
                ),
                Expanded(
                  child: NotificationListener<UserScrollNotification>(
                    onNotification: (notification) {
                      final ScrollDirection direction = notification.direction;
                      setState(() {
                        if (direction == ScrollDirection.reverse) {
                          showFab = false;
                        } else if (direction == ScrollDirection.forward) {
                          showFab = true;
                        }
                      });
                      return true;
                    },
                    child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (_, i) => ListTile(title: Text('$i')),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
