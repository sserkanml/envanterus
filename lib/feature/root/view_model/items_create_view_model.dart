import 'package:envanterus/core/util/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';

class ItemsCreateScreenViewModel {
  static void getShowModel({required BuildContext context}) {
    showModalBottomSheet(
      useRootNavigator: true,
      clipBehavior: Clip.none,
      context: context,
      builder: (context) {
        return SizedBox(
          height: context.dynamicHeight(0.34),
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Ekleme Yapmak:'),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height:50,
                      width: context.dynamicWidth(1),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              context.getPath(
                                  file: "file.svg", type: AssetType.svg),
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Malzeme  Ekle",
                                style: context.textTheme.bodyLarge!
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height:50,
                      width: context.dynamicWidth(1),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              context.getPath(
                                  file: "folder.svg", type: AssetType.svg),
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Klasör  Ekle",
                                style: context.textTheme.bodyLarge!
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
              Positioned(
                top: -30,
                right: 40,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:
                        const Icon(Icons.close, color: Colors.white, size: 30),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
