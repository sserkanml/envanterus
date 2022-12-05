import 'package:envanterus/feature/settings/model/custom_input_i.dart';

class SuggestedInput extends IcustomInputField {
  SuggestedInput({required super.name, super.subtitle, required super.image});
}

List<SuggestedInput> suggestedInputdata = [
  SuggestedInput(
      name: "Seri Numarası", image: "t.svg", subtitle: "Küçük Yazı Kutusu"),
  SuggestedInput(name: "Boyut", image: "t.svg", subtitle: "Küçük Yazı Kutusu"),
  SuggestedInput(
      name: "Son Kullanma Tarihi", image: "date.svg", subtitle: "Tarih"),
  SuggestedInput(
      name: "Satın Alma Tarihi", image: "date.svg", subtitle: "Tarih"),
  SuggestedInput(name: "Ürün Linki", image: "link.svg", subtitle: "Web Linki"),
  SuggestedInput(name: "Model Numarası", image: "t.svg", subtitle: "Tarih"),
];
