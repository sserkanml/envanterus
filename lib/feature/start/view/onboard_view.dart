import 'package:envanterus/core/constant/path_constant.dart';
import 'package:envanterus/core/util/path.dart';
import 'package:envanterus/feature/start/model/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({Key? key}) : super(key: key);

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  int index = 0;
  late final PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  elevation: 1,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (value) {
                      setState(() {
                        index = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return SvgPicture.asset(
                        context.getPath(
                            type: onboardData[index].type,
                            file: onboardData[index].file),
                        fit: BoxFit.contain,
                      );
                    },
                    itemCount: onboardData.length,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    IndexedStack(
                      index: index,
                      children: [
                        ...List.generate(
                            onboardData.length,
                            (index) => Center(
                                    child: Text(
                                  onboardData[index].title,
                                  textAlign: TextAlign.center,
                                  style: context.textTheme.bodyLarge!.copyWith(
                                      color: context.colorScheme.onSurface),
                                )))
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ...List.generate(
                            onboardData.length,
                            (index) => Container(
                                  height: 15,
                                  width: 15,
                                  margin: const EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: context
                                                .colorScheme.onTertiaryContainer
                                                .withOpacity(.17),
                                            spreadRadius: 1,
                                            blurRadius: 10)
                                      ],
                                      shape: BoxShape.circle,
                                      color: this.index == index
                                          ? context.colorScheme.primary
                                          : context.colorScheme.onSecondary),
                                ))
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: context.dynamicWidth(.4),
                          child: ElevatedButton(
                            onPressed: () {
                              context.goNamed(PathConstant.signup.name);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: context.colorScheme.secondary),
                            child: const Text(
                              "Kayıt Ol",
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 50,
                          width: context.dynamicWidth(.4),
                          child: ElevatedButton(
                            onPressed: () {
                              context.goNamed(PathConstant.login.name);
                            },
                            child: const Text(
                              "Giriş Yap",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
