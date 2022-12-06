import 'package:envanterus/core/constant/path_constant.dart';
import 'package:envanterus/core/util/path.dart';
import 'package:envanterus/feature/root/model/gridview_model.dart';
import 'package:envanterus/feature/root/model/inventory_summary_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  late ScrollController controller;
  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Dashbaord',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: context.dynamicWidth(1),
                    child: InkWell(
                      onTap: () {
                        context.push(
                            "/dashboard/${PathConstant.inventorySummary.value}");
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    context.getPath(
                                        type: AssetType.svg, file: "layer.svg"),
                                    width: 16,
                                    height: 16,
                                    color: context.colorScheme.onSurface
                                        .withOpacity(.6),
                                  ),
                                  SvgPicture.asset(
                                    context.getPath(
                                        type: AssetType.svg,
                                        file: "circlehelp.svg"),
                                    width: 16,
                                    height: 16,
                                    color: context.colorScheme.onSurface
                                        .withOpacity(.4),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Envanter Özeti',
                                style: context.textTheme.bodyMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  ...List.generate(
                                    inventorsummarydata.length,
                                    (index) {
                                      return Container(
                                        margin: const EdgeInsets.only(right: 8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              inventorsummarydata[index].title,
                                              style: context
                                                  .textTheme.bodySmall!
                                                  .copyWith(fontSize: 10),
                                            ),
                                            Text(
                                              inventorsummarydata[index].data,
                                              style: context
                                                  .textTheme.bodySmall!
                                                  .copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: context.colorScheme
                                                          .onSurface),
                                            ),
                                            const SizedBox(height: 10),
                                          ],
                                        ),
                                      );
                                    },
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: gridviewdata.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          controller.jumpTo(0);
                          context
                              .push("/dashboard/${gridviewdata[index].path}");
                        },
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    context.getPath(
                                        type: AssetType.svg,
                                        file: gridviewdata[index].image),
                                    width: 16,
                                    height: 16,
                                    color: context.colorScheme.onSurface,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    gridviewdata[index].title,
                                    style: context.textTheme.bodySmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Expanded(
                                    child: Text(
                                      gridviewdata[index].description,
                                      style: context.textTheme.bodySmall!
                                          .copyWith(fontSize: 11),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  const Text('Son Eklenenler'),
                ],
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(.4),
              width: context.dynamicWidth(1),
              child: Card(
                elevation: 3,
                margin: EdgeInsets.zero,
                child: ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemBuilder: (context, index) {
                    return const SizedBox(
                        width: 170,
                        child: Card(
                          elevation: 1,
                          margin: EdgeInsets.only(right: 30),
                        ));
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
