import 'package:envanterus/core/constant/path_constant.dart';

class BottomItemModel {
  final String image;
  final String label;
  final int id;
  final String path;

  BottomItemModel({
    required this.image,
    required this.label,
    required this.path,
    required this.id,
  });
}

List<BottomItemModel> bottomitemdata = [
  BottomItemModel(
      id: 0,
      image: "dashboard.svg",
      label: "Dashboard",
      path: PathConstant.dashboard.name),
  BottomItemModel(
      id: 1,
      image: "items.svg",
      label: "Malzemeler",
      path: PathConstant.items.name),
  BottomItemModel(
      id: 2,
      image: "search.svg",
      label: "Arama",
      path: PathConstant.search.name),
  BottomItemModel(
      id: 3,
      image: "bell.svg",
      label: "Bildirimler",
      path: PathConstant.notifications.name),
  BottomItemModel(
    id: 4,
    image: "bar.svg",
    label: "Ayarlar",
    path: PathConstant.settings.name,
  ),
];
