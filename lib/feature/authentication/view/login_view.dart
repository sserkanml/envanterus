import 'package:envanterus/core/constant/path_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Envanterus',
          style: context.textTheme.headline5,
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
          Positioned.fill(
              bottom: 70,
              child: Column(
                children: const <Widget>[],
              ))
        ],
      ),
    );
  }
}
