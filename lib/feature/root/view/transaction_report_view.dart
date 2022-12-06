import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

import '../../../core/util/path.dart';
import '../view_model/items_view_model.dart';

class TransactionReportView extends StatefulWidget {
  const TransactionReportView({Key? key}) : super(key: key);

  @override
  State<TransactionReportView> createState() => _TransactionReportViewState();
}

class _TransactionReportViewState extends State<TransactionReportView> {
  @override
  Widget build(BuildContext context) {
    bool showFab = false;
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
        elevation: 2,
        actions: [
          IconButton(
            onPressed: () {
              ItemsViewModel.getShowBottom(context: context);
            },
            icon: SvgPicture.asset(
              context.getPath(file: "ellipsis.svg", type: AssetType.svg),
              width: 20,
              height: 20,
              color: context.colorScheme.onSurface,
            ),
          ),
        ],
        title: Text(
          'İşlem Özeti',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Row(
                    children: const [
                      Text('Tüm İşlemler'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
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
