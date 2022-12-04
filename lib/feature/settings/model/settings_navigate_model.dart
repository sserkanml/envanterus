import 'package:envanterus/core/constant/path_constant.dart';

class SettingsModel {
  final String route;
  final String image;
  final String title;
  final PushType type;

  SettingsModel(
      {required this.type,
      required this.route,
      required this.image,
      required this.title});
}

enum PushType { go, push }

List<SettingsModel> settingsdata = [
  SettingsModel(
      type: PushType.go,
      title: "Kullanıcı Profili",
      image: "user.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      type: PushType.push,
      title: "Ayarlar",
      image: "setting.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      type: PushType.go,
      title: "Şirket Detaylar",
      image: "company.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      type: PushType.push,
      title: "Raporlar",
      image: "report.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      type: PushType.push,
      title: "Eylem Geçmişi",
      image: "history.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      type: PushType.push,
      title: "Veri Ekleme",
      image: "bulkimport.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      type: PushType.go,
      title: "Yardım & Destek",
      image: "circlehelp.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      type: PushType.go, title: "Çıkış Yap", image: "signout.svg", route: ""),
];
