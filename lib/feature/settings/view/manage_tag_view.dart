import 'package:envanterus/core/util/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';

class ManageTagView extends StatelessWidget {
  const ManageTagView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              context.getPath(file: "pen.svg", type: AssetType.svg),
              width: 20,
              height: 20,
              color: context.colorScheme.onSurface,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              context.getPath(file: "plus.svg", type: AssetType.svg),
              width: 20,
              height: 20,
              color: context.colorScheme.onSurface,
            ),
          ),
        ],
        title: Text(
          'Etiketler',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: context.colorScheme.background,
                        enabled: true,
                        prefixIcon: const Icon(Icons.search),
                        focusedBorder: InputBorder.none,
                        filled: true,
                        hintText: "Arama Yap",
                        hintStyle: context.textTheme.bodySmall,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20.0,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.sort),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
