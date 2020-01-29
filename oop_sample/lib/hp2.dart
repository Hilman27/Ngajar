import 'package:oop_sample/oop_sample.dart' as oop_sample;
import 'main.dart';
abstract class Smartphone{
  int baterai=100;
  final List kontak;
  bool panggilan;

  Smartphone(this.kontak);

  Smartphone.initBaterai(this.baterai, this.kontak);

  int getBaterai(){
    return baterai;
  }

  void setBaterai(int bateraiNew){
    baterai = bateraiNew;    
    print("Baterai saat ini : $baterai");
  }

  void mainGame(){
    kurangBaterai(20,'Baru saja Main Game ---');     
  }

  void smsan(){
    kurangBaterai(5,'Baru saja Smsan ---');    
  }

  void chatting(){
    kurangBaterai(10,'Baru saja Chatting ---');    
  }

  void telponMantan(){
    kurangBaterai(100,'Baru saja.... ');    
  }

  void kurangBaterai(int value, String kalimat){
    baterai-=value;
    print(kalimat);
    print("Baterai saat ini : $baterai");
  }



}

class Asung extends Smartphone with PlayStore{
  Asung(List kontak) : super(kontak);
  
  void asungStore(){
    kurangBaterai(10, 'Pakai Asung Store');
  }
}

class Banana extends Smartphone with PlayStore{
  Banana(List kontak) : super(kontak);
  
  void bananaStore(){
    kurangBaterai(10, 'Pakai Banana Store');
  }
}

class Bekas implements Smartphone{
  @override
  int baterai;

  @override
  bool panggilan;

  @override
  void chatting() {
    print("Error");
  }

  @override
  int getBaterai() {
    // TODO: implement getBaterai
    return null;
  }

  @override
  // TODO: implement kontak
  List get kontak => null;

  @override
  void kurangBaterai(int value, String kalimat) {
    // TODO: implement kurangBaterai
  }

  @override
  void mainGame() {
    // TODO: implement mainGame
  }

  @override
  void setBaterai(int bateraiNew) {
    // TODO: implement setBaterai
  }

  @override
  void smsan() {
    // TODO: implement smsan
  }

  @override
  void telponMantan() {
    // TODO: implement telponMantan
  }
  
}

mixin PlayStore on Smartphone  {  

  void playStore(){
    kurangBaterai(10, 'Pakai play Store');
  }
  
}

main() {
  List kontakBaru = [08133213231,084231231,084123123123];
  Bekas hapeBaru = Bekas();

  Banana hape2 = Banana(kontakBaru);

  
  

  print("hapeBaru");
  print(hapeBaru.getBaterai());

  hapeBaru.chatting();

  hapeBaru.chatting();

  hapeBaru.mainGame();

  hapeBaru.telponMantan();

  //hapeBaru.asungStore();

}
