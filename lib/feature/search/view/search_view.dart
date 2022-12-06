import 'package:envanterus/core/util/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.search),
        title: Container(
            child: const TextField(
          decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "Arama"),
        )),
      ),
      body: SizedBox(
        width: context.dynamicWidth(1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              context.getPath(type: AssetType.svg, file: "404_error.svg"),
              width: 140,
              height: 140,
              alignment: Alignment.centerRight,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Bir sonuç bulunamadı.'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(
          context.getPath(file: "barcode.svg", type: AssetType.svg),
          width: 25,
          height: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
