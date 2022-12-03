import 'package:envanterus/core/constant/path_constant.dart';
import 'package:envanterus/core/util/path.dart';

class SettingsModel {
  final String route;
  final String image;
  final String title;

  SettingsModel({required this.route, required this.image, required this.title});
}


List<SettingsModel> settingsdata=[
   SettingsModel(
      title: "Kullanıcı Profili",
      image: "user.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      title: "Ayarlar",
      image: "setting.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      title: "Şirket Detaylar",
      image: "company.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      title: "Raporlar",
      image: "report.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      title: "Eylem Geçmişi",
      image: "history.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      title: "Veri Ekleme",
      image: "bulkimport.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      title: "Yardım & Destek",
      image: "circlehelp.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(title: "Çıkış Yap", image: "signout.svg", route: ""),
];