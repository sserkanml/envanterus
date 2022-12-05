class ItemsCreateBottomSheetModel {
  final String icon;
  final String label;
  final String path;

  ItemsCreateBottomSheetModel(
      {required this.icon, required this.label, required this.path});
}

List<ItemsCreateBottomSheetModel> itemscreatebottomsheetdata = [
  ItemsCreateBottomSheetModel(icon: "file.svg", label: "Malzeme Ekle", path: ""),
  ItemsCreateBottomSheetModel(icon: "folder.svg", label: "Klasör Ekle", path: ""),
];
