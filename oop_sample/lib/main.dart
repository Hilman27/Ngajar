import 'package:oop_sample/oop_sample.dart' as oop_sample;

class _Smartphone{
  int baterai=100;
  final List kontak;
  bool panggilan;

  _Smartphone(this.kontak);

  _Smartphone.initBaterai(this.baterai, this.kontak);

  int getBaterai(){
    return baterai;
  }

  void setBaterai(int bateraiNew){
    baterai = bateraiNew;    
    print("Baterai saat ini : $baterai");
  }

  void mainGame(){
    baterai-=20;
    print("Baru saja Main Game ---");
    print("Baterai saat ini : $baterai");
  }

  void smsan(){
    baterai-=5;
    print("Baru saja Smsan ---");
    print("Baterai saat ini : $baterai");
  }

  void chatting(){
    baterai-=15;
    print("Baru saja Chatting ---");
    print("Baterai saat ini : $baterai");
  }

  void telponMantan(){
    baterai-=100;
    print("Baru saja.... ");
    print("Baterai saat ini : $baterai");
  }

  void kurangBaterai(int value, String kalimat){
    baterai-=value;
    print(kalimat);
    print("Baterai saat ini : $baterai");
  }



}


main() {
  List kontakBaru = [08133213231,084231231,084123123123];
  _Smartphone hapeBaru = _Smartphone.initBaterai(50, kontakBaru);
  _Smartphone hape2 = _Smartphone.initBaterai(1000, kontakBaru);

  print("hapeBaru");
  hapeBaru.baterai=30;
  print(hapeBaru.getBaterai());
  

  print(hape2.getBaterai());

  hapeBaru.chatting();

  hapeBaru.chatting();

  hapeBaru.mainGame();  

  hapeBaru.telponMantan();

}
