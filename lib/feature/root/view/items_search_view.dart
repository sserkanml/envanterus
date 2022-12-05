import 'package:flutter/material.dart';

class ItemsSearchView extends StatelessWidget {
  const ItemsSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          title: Container(
              color: Theme.of(context).appBarTheme.backgroundColor,
              alignment: Alignment.center,
              child: const TextField(
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Arama Yap"),
              )),
          bottom: const TabBar(isScrollable: false, tabs: [
            Tab(
              text: "Bu Klasör",
            ),
            Tab(
              text: "Bütün Klasörler",
            ),
          ]),
        ),
        body: TabBarView(children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Text('aaa');
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Text('txt');
            },
          ),
        ]),
      ),
    );
  }
}
