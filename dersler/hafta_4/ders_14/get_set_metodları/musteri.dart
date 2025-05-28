class Musteri{
  int? _musteriNo;
  
  Musteri(){
  }

  void set musteriNoAta(int no){
    if(no>300){
      _musteriNo = no;
    } 
    else{
      return;
    }
  }

  String get musteriNoSoyle{
    if(_musteriNo == null){
      return "Musteri no: $_musteriNo, Hatali Giris!";
    }
    else{
    return "Musteri no: $_musteriNo";
    }
  }

  void bilgileriYazdir(){
    var deneme = musteriNoSoyle;
    print("$deneme");
  }
}