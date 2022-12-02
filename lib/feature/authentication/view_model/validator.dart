import 'package:flutter/cupertino.dart';
import 'package:validators/validators.dart';

class ValidateForm {
  static GlobalKey<FormState> formKey = GlobalKey();

  String? validateIsEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return "Bu alan boş geçilemez";
    } else {
      return null;
    }
  }

  String? validateContract(bool value) {
    if (value == false) {
      return "Bu alan boş geçilemez";
    } else {
      return null;
    }
  }

  void validateForm() {
    if (formKey.currentState?.validate() ?? false) {
      formKey.currentState!.save();
    } else {
      return;
    }
  }

  String? validateEmail(String value) {
    if (!isEmail(value)) {
      return "Geçerli bir email formatı giriniz";
    } else {
      return null;
    }
  }

  String? validateCharacter(String value, Bigorsmall type) {
    switch (type) {
      case Bigorsmall.big:
        if (value.length < 8) {
          return "En az sekiz karakterli olmak zorundadır.";
        } else {
          return null;
        }
      case Bigorsmall.small:
        if (value.length > 40) {
          return "En fazla kırk karakterli olabilir.";
        } else {
          return null;
        }
    }
  }
}

enum Bigorsmall { big, small }
