import 'package:envanterus/core/util/path.dart';
import 'package:envanterus/feature/root/model/bottom_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatefulWidget {
  final Widget child;
  const HomeView({Key? key, required this.child}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.child,
        bottomNavigationBar: SizedBox(
          height: 60,
          width: context.dynamicWidth(.2),
          child: Card(
            margin: EdgeInsets.zero,
           
            elevation: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  bottomitemdata.length,
                  (index) {
                    return Expanded(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            currentIndex = bottomitemdata[index].id;
                            context.goNamed(bottomitemdata[index].path);
                          });
                        },
                        icon: Column(
                          children: [
                            SvgPicture.asset(
                                context.getPath(
                                    file: bottomitemdata[index].image,
                                    type: AssetType.svg),
                                width: 18,
                                color: currentIndex == index
                                    ? context.colorScheme.primary
                                    : context.colorScheme.onSurfaceVariant
                                        .withOpacity(.3),
                                height: 18),
                            const SizedBox(
                              height: 2,
                            ),
                            Expanded(
                                child: FittedBox(
                              child: Text(
                                bottomitemdata[index].label,
                                style: context.textTheme.bodySmall!.copyWith(
                                  color: currentIndex == index
                                      ? context.colorScheme.primary
                                      : context.colorScheme.onSurfaceVariant
                                          .withOpacity(.3),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
