import 'package:envanterus/core/constant/path_constant.dart';
import 'package:envanterus/core/util/path.dart';
import 'package:envanterus/feature/authentication/view_model/validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  late FocusNode passwordNode;
  late FocusNode emailNode;
  bool checkboxValue = false;
  late ValidateForm _validateForm;
  bool isClickEye = false;
  @override
  void initState() {
    passwordNode = FocusNode();
    emailNode = FocusNode();
    _validateForm = ValidateForm();
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
                          text: "Bir hesabın var mı ? ",
                          style: context.textTheme.bodyMedium!),
                      TextSpan(
                          text: "Giriş Yap",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.goNamed(PathConstant.login.name);
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
                  child: Form(
                    key: ValidateForm.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Hesap Oluştur !',
                          style: context.textTheme.bodyLarge!
                              .copyWith(color: context.colorScheme.onSurface)
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Bugün bir hesap oluşturarak başlayabilirsin.',
                          style: context.textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            String? message =
                                _validateForm.validateIsEmpty(value) ??
                                    _validateForm.validateCharacter(
                                        value!, Bigorsmall.small);
                            return message;
                          },
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(emailNode);
                          },
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 8.0,
                              ),
                              filled: true,
                              labelText: "Ad Soyad"),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) {
                            String? message =
                                _validateForm.validateIsEmpty(value) ??
                                    _validateForm.validateEmail(value!);
                            return message;
                          },
                          keyboardType: TextInputType.emailAddress,
                          focusNode: emailNode,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(passwordNode);
                          },
                          decoration: const InputDecoration(
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
                        TextFormField(
                          obscureText: isClickEye ? false : true,
                          validator: (value) {
                            String? message =
                                _validateForm.validateIsEmpty(value) ??
                                    _validateForm.validateCharacter(
                                        value!, Bigorsmall.big);
                            return message;
                          },
                          focusNode: passwordNode,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).unfocus();
                          },
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
                        const SizedBox(height: 10),
                        FormField<bool>(
                          validator: (value) {
                            return _validateForm
                                .validateContract(checkboxValue);
                          },
                          builder: (field) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      value: checkboxValue,
                                      onChanged: (value) {
                                        setState(() {
                                          checkboxValue = value!;
                                        });
                                      },
                                    ),
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Kullanıcı sözleşmesini ",
                                              style: context
                                                  .textTheme.bodySmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: context.colorScheme
                                                          .primary)),
                                          TextSpan(
                                              text: "okdum ve kabul ediyorum",
                                              style:
                                                  context.textTheme.bodySmall!),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                if (field.hasError)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      field.errorText!,
                                      style: context.textTheme.bodySmall!
                                          .copyWith(
                                              color: context.colorScheme.error),
                                    ),
                                  ),
                              ],
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: context.dynamicWidth(1),
                          height: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: ElevatedButton(
                              onPressed: () {
                                _validateForm.validateForm();
                              },
                              child: const Text(
                                "Kayıt Ol",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
