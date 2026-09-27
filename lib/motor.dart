import 'package:latihan_pbo_dart/kendaraan.dart';
import 'package:latihan_pbo_dart/mixin.dart';

class Motor extends Kendaraan with Perawatan {
  String jenisMotor;
  int kapasitasMesin;

  Motor(
    String merk,
    String model,
    int tahun,
    this.jenisMotor,
    this.kapasitasMesin,
  ) : super(merk, model, tahun);

  @override
  double hitungBiayaOperasional() {
    return 75000 + (kapasitasMesin * 100);
  }

  @override
  void tampilkanInfo() {
    print('--- INFO MOTOR ---');
    print('Merk           : $merk');
    print('Model          : $model');
    print('Tahun          : $tahun');
    print('Jenis Motor    : $jenisMotor');
    print('Kapasitas      : $kapasitasMesin cc');
  }
}