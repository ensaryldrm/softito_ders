void main(List<String> args) {
  Banka garantiBankasi = Banka("Garanti Bankasi", 1991, 3524, "Istanbul / Fatih", "05XX XXX XX XX", 15000000, 453, true);
  garantiBankasi.bilgileriGoster();
}

class Banka{
  String? bankaIsim;
  int? baslangicYil;
  int? kisiSayi;
  String? anaMerkez;
  String? baglantiNumara;
  double? yillikKar;
  int? subeSayisi;
  bool? aktifMi;

  Banka(String name, int beginYear,int personCount, String generalOrijinAdress, String contactPhoneNumber, double yearMoney, int branchCount, bool isActive){
    bankaIsim = name;
    baslangicYil = beginYear;
    kisiSayi = personCount;
    anaMerkez = generalOrijinAdress;
    baglantiNumara = contactPhoneNumber;
    yillikKar = yearMoney;
    subeSayisi = branchCount;
    aktifMi = isActive;
  }

  void bilgileriGoster(){
    print("Banka isim: $bankaIsim\nKurulus Yili: $baslangicYil\nGorevli sayisi: $kisiSayi\nAna Merkez: $anaMerkez\nTelefon No: $baglantiNumara\nYillik Kazanc: $yillikKar\nSube Sayisi: $subeSayisi\nAcik mi: $aktifMi"); 
  }
}