class Makanan {
  final String nama;
  final String deskripsi;
  final String gambar;
  final String detail;
  final String waktubuka;
  final String harga;
  final String kalori;
  final List<String> gambarlain;
  final List<Map<String, String>> bahan;

  Makanan({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.detail,
    required this.waktubuka,
    required this.harga,
    required this.kalori,
    required this.gambarlain,
    required this.bahan,
  });
}
