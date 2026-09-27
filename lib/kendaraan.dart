abstract class Kendaraan {
  // ENCAPSULATION - atribut privat, hanya bisa diakses lewat getter/setter
  String _merk;
  String _model;
  int _tahun;

  Kendaraan(this._merk, this._model, int tahun) : _tahun = 1900 {
    this.tahun = tahun; // validasi tetap berlaku sejak objek dibuat
  }

  String get merk => _merk;
  set merk(String value) => _merk = value;

  String get model => _model;
  set model(String value) => _model = value;

  int get tahun => _tahun;
  set tahun(int value) {
    if (value >= 1900) {
      _tahun = value;
    } else {
      print(
        'Warning: Tahun $value tidak valid (harus >= 1900). Nilai tidak diubah.',
      );
    }
  }

  // METHOD ABSTRAK - wajib diimplementasikan berbeda di setiap subclass
  double hitungBiayaOperasional();
  void tampilkanInfo();
}