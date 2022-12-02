// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:envanterus/core/util/path.dart';

class OnboardModel {
  final String file;
  final AssetType type;
  final String title;
  OnboardModel({
    required this.file,
    required this.type,
    required this.title,
  });
}

List<OnboardModel> onboardData = [
  OnboardModel(
      file: "onboard1.svg",
      type: AssetType.svg,
      title: "Envanter Takipi Kolaylaştıran"),
  OnboardModel(
      file: "onboard2.svg",
      type: AssetType.svg,
      title: "Tara & QR Kodlarla ve Barcode ile Bağlantı Kur"),
  OnboardModel(
      file: "onboard3.svg",
      type: AssetType.svg,
      title: "Takımınla,İşcilerinle ve Müşterilerinle Paylaş"),
  OnboardModel(
      file: "onboard4.svg",
      type: AssetType.svg,
      title: "Tara & QR Kodlarla ve Barcode ile Bağlantı Kur"),
  OnboardModel(
      file: "onboard5.svg",
      type: AssetType.svg,
      title: "Ara,Filtrele ve Çıkart"),
];
