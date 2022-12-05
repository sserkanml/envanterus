import 'package:envanterus/core/constant/path_constant.dart';

class PreferencesModel {
  final String label;
  final String image;
  final String path;

  PreferencesModel(
      {required this.label, required this.image, required this.path});
}

List<PreferencesModel> preferencesdata = [
  PreferencesModel(
      label: "Tercihler",
      image: "setting.svg",
      path: PathConstant.preferences.name),
  PreferencesModel(
      label: "Özel Inputlar",
      image: "field.svg",
      path: PathConstant.customField.value),
  PreferencesModel(
      label: "Etiket Yönet",
      image: "tag.svg",
      path: PathConstant.manageTag.value),
  PreferencesModel(
      label: "Senkronize Envanter",
      image: "rotate.svg",
      path: PathConstant.sync.value),
];
