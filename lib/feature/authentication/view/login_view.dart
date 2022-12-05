import 'package:envanterus/core/constant/path_constant.dart';
import 'package:envanterus/core/util/path.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late FocusNode passwordNode;
  bool isClickEye = false;
  @override
  void initState() {
    passwordNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Envanterus',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
        leading: IconButton(
          onPressed: () {
            context.goNamed(PathConstant.onboard.name);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 70,
              child: Card(
                child: Center(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Henüz bir hesabın yok mu ? ",
                          style: context.textTheme.bodyMedium!),
                      TextSpan(
                          text: "Kayıt Ol",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.goNamed(PathConstant.signup.name);
                            },
                          style: context.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.colorScheme.primary)),
                    ]),
                  ),
                ),
              )),
          Positioned.fill(
              bottom: 70,
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        'Tekrardan Hoşgeldin !',
                        style: context.textTheme.bodyLarge!
                            .copyWith(color: context.colorScheme.onSurface)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Hesabına Giriş Yapabilirsin.',
                        style: context.textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 8.0,
                            ),
                            filled: true,
                            labelText: "Email"),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: isClickEye ? false : true,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 8.0,
                            ),
                            filled: true,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isClickEye = !isClickEye;
                                });
                              },
                              icon: SvgPicture.asset(
                                context.getPath(
                                    file: isClickEye
                                        ? "eyeclose.svg"
                                        : "eyeopen.svg",
                                    type: AssetType.svg),
                                width: 20,
                                height: 20,
                                color: context.colorScheme.onBackground,
                              ),
                            ),
                            labelText: "Şifre"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Şifremi Unuttum ? ',
                        style: context.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.colorScheme.primary),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: context.dynamicWidth(1),
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Giriş Yap",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
