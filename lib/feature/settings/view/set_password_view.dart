import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SetPasswordView extends StatelessWidget {
  const SetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 8.0,
                        ),
                        filled: true,
                        fillColor:
                            context.colorScheme.onSurface.withOpacity(.02),
                        labelText: "Şifre"),
                  ),
                ],
              ))
            ],
          ),
        )),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
          title: Text(
            'Şifre Belirle',
            style: context.textTheme.bodyLarge!
                .copyWith(color: context.colorScheme.onSurface),
          ),
        ));
  }
}
