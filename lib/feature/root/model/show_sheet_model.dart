import 'package:envanterus/core/constant/path_constant.dart';

class ShowModalModel {
  final String label;
  final String image;
  final String route;

  ShowModalModel(
      {required this.label, required this.image, required this.route});
}

List<ShowModalModel> showmodalbottomsheetdata = [
  ShowModalModel(
      label: "Arama",
      image: "search.svg",
      route: PathConstant.itemsSearch.value),
  ShowModalModel(label: "Seç", image: "checkbox.svg", route: ""),
  ShowModalModel(label: "Filterele", image: "filter.svg", route: ""),
];
