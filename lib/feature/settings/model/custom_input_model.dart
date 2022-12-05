import 'package:envanterus/feature/settings/model/custom_input_i.dart';

class CustomInputModel extends IcustomInputField {
  CustomInputModel({required super.name, super.subtitle, required super.image});
}

List<CustomInputModel> custominputModel = [
  CustomInputModel(
      name: "Küçük Yazı Kutusu", image: "t.svg", subtitle: "190 karakter"),
  CustomInputModel(
      name: "Geniş Yazı Kutusu",
      image: "largetext.svg",
      subtitle: "400 karakter"),
  CustomInputModel(name: "Ondalıklı Sayı", image: "decimal.svg"),
  CustomInputModel(name: "Checkbox", image: "checkbox.svg"),
  CustomInputModel(name: "Dropdown", image: "dropdown.svg"),
  CustomInputModel(name: "Tarih", image: "date.svg"),
  CustomInputModel(name: "Tarayıcı", image: "scanner.svg"),
  CustomInputModel(name: "Telefon Numarası", image: "phone.svg"),
  CustomInputModel(name: "Web Linki", image: "link.svg"),
  CustomInputModel(name: "Email", image: "email.svg"),
];
