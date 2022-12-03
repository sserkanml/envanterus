class GridViewModel {
  final String title;
  final String description;
  final String image;
  final String path;

  GridViewModel(
      {required this.title,
      required this.description,
      required this.image,
      required this.path});
}

List<GridViewModel> gridviewdata = [
  GridViewModel(
      title: "Düşük Stok",
      description: "Düşük envanter olan tüm stok kalemlerini görüntüle",
      image: "uparrow.svg",
      path: ""),
  GridViewModel(
      title: "Miktar Değişikleri",
      description: "bir kalem için tüm giriş ve çıkışları görüntüleyin",
      image: "chart.svg",
      path: ""),
  GridViewModel(
      title: "Taşıma Özetleri",
      description: "yerleri taşınan envanteri takip edin",
      image: "folder.svg",
      path: ""),
  GridViewModel(
      title: "İşlem Geçmişi",
      description:
          "tüm miktar güncellemelerini, hareketlerini ve klonları görün",
      image: "rotate.svg",
      path: ""),
];
