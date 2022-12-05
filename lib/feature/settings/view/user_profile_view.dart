import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kullanıcı Profili',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 8.0,
                      ),
                      filled: true,
                      fillColor: context.colorScheme.onSurface.withOpacity(.02),
                      labelText: "İsim"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 8.0,
                      ),
                      filled: true,
                      fillColor: context.colorScheme.onSurface.withOpacity(.02),
                      labelText: "Email"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 8.0,
                      ),
                      filled: true,
                      fillColor: context.colorScheme.onSurface.withOpacity(.02),
                      labelText: "Telefon Numarası"),
                ),
                const SizedBox(height: 20),
                Text(
                  'Şİfre Yönetimi',
                  style: context.textTheme.bodySmall,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: context.dynamicWidth(1),
                  child: OutlinedButton(
                    onPressed: () {
                      context.push("/settings/userProfile/setPassword");
                    },
                    child: const Text(
                      'Şifre Değiştir',
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
