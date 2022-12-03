class InventorySummaryModel {
  final String title;
  final String data;

  InventorySummaryModel({required this.title, required this.data});
}

List<InventorySummaryModel> inventorsummarydata = [
  InventorySummaryModel(title: "Malzemeler", data: "10"),
  InventorySummaryModel(title: "Klasörler", data: "4"),
  InventorySummaryModel(title: "Toplam Mik", data: "103 birim"),
  InventorySummaryModel(title: "Toplam Değer", data: "₺4.5k"),
];
