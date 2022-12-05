class ReportsModel {
  final String title;
  final String image;
  final String description;
  final String route;

  ReportsModel(
      {required this.title,
      required this.image,
      required this.description,
      required this.route});
}

List<ReportsModel> reportsdata = [
  ReportsModel(
      route: "",
      title: "Envanter Özet",
      description:
          "Stokunuzun toplam miktarını ve değerini bir bakışta gözden geçirin.Belirli bir konumdaki veya bir klasördeki malzemeleri ve varlıkları incelemek için harika",
      image: "layer.svg"),
  ReportsModel(
      route: "",
      title: "Düşük Stok ",
      description:
          "Stok düzeyi düşük olan tüm stok kalemlerini görüntüleyin, böylece ihtiyacınız olan şey hiçbir zaman tükenmez",
      image: "uparrow.svg"),
  ReportsModel(
      route: "",
      title: "Miktar Değişiklik",
      description:
          "Belirli bir zaman aralığındaki değişiklikleri anlamak için bir öğenin tüm giriş ve çıkışlarını görüntüleyin.İzlenecek doğru stoğu bulmak için sağlam filtreler kullanın",
      image: "chart.svg"),
  ReportsModel(
      route: "",
      title: "Taşıma Raporu Özeti",
      description:
          "Haftalık veya aylık olarak konum değiştiren envanteri takip edin",
      image: "file.svg"),
  ReportsModel(
      route: "",
      title: "İşlem Özeti",
      description:
          "envanterinizdeki tüm miktar değişikliklerini, hareketleri, klonları, eklemeleri ve silmeleri görün. Bir ekip üyesinin etkinliğini incelemek veya bir klasörü izlemek için kullanışlıdır.",
      image: "rotate.svg"),
];
