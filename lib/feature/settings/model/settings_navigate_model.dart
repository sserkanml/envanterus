import 'package:envanterus/core/constant/path_constant.dart';

class SettingsModel {
  final String route;
  final String image;
  final String title;
  final PushType type;
  final String path;

  SettingsModel(
      {required this.type,
      required this.route,
      required this.path,
      required this.image,
      required this.title});
}

enum PushType { go, push }

List<SettingsModel> settingsdata = [
  SettingsModel(
      path: PathConstant.userProfile.value,
      type: PushType.go,
      title: "Kullanıcı Profili",
      image: "user.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      path: PathConstant.insideSettings.value,
      type: PushType.push,
      title: "Ayarlar",
      image: "setting.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      path: PathConstant.companyDetail.value,
      type: PushType.go,
      title: "Şirket Detaylar",
      image: "company.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      path: PathConstant.report.value,
      type: PushType.push,
      title: "Raporlar",
      image: "report.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      path: PathConstant.activityHistory.value,
      type: PushType.push,
      title: "Eylem Geçmişi",
      image: "history.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      path: PathConstant.bulkImport.value,
      type: PushType.push,
      title: "Veri Ekleme",
      image: "bulkimport.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      path: PathConstant.helpSupport.name,
      type: PushType.go,
      title: "Yardım & Destek",
      image: "circlehelp.svg",
      route: PathConstant.dashboard.name),
  SettingsModel(
      path: "",
      type: PushType.go,
      title: "Çıkış Yap",
      image: "signout.svg",
      route: ""),
];
