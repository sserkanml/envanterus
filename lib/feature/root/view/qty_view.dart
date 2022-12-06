import 'package:envanterus/core/util/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

class QtyView extends StatefulWidget {
  const QtyView({Key? key}) : super(key: key);

  @override
  State<QtyView> createState() => _QtyViewState();
}

class _QtyViewState extends State<QtyView> {
  bool _showFab = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedSlide(
        duration: const Duration(milliseconds: 500),
        offset: _showFab ? Offset.zero : const Offset(0, 2),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: _showFab ? 1 : 0,
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
            onPressed: () {},
            icon: SvgPicture.asset(
              context.getPath(file: "filter.svg", type: AssetType.svg),
              width: 20,
              height: 20,
              color: context.colorScheme.onSurface,
            ),
          ),
        ],
        title: Text(
          'Miktar Değişikleri',
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
                          _showFab = false;
                        } else if (direction == ScrollDirection.forward) {
                          _showFab = true;
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
