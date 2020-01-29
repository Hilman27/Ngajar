import 'package:listandgeneric/listandgeneric.dart' as listandgeneric;

void tampilBuku(Map buku){
  buku.forEach((key,elemen){
    print("----------------");
    print("Judul Buku : $key");
    print("Sinopsis : ${elemen[0].toString()}");
    print("Rating : ${elemen[1].toString()}/5");
    print("Harga : Rp.${elemen[2].toString()},-");
    print("Jumlah Stok : ${elemen[3].toString()}");
  });
}

main(List<String> arguments) {
  
  List<String> kucing = ['Persian', 'Bengal', 'British','Muchkin','Kampung'];
  Set ayam = {'Kampung', 'Asil', 'Samo','Lohman', 'Leghorn'};
  Map<String,List> buku = {
    'HariPotter' : ['Cerita seorang anak kecil menjadi potter bandara di ibu kota.',5,10000,10],
    'SapeiDarman' : ['Cerita seorang darmawan bernama Sapei.',4,20000,10],
    'Dora dan Emon' : ['Cerita sepasang kakak adik yang terjebak di dalam hutan.',5,5000,10],        
  };

  //print('List Kucing : $kucing');
  //print('Set Ayam : $ayam');
  print('Map Buku : $buku');  
  //buku['Kucing'] = 'MEONG!';

  tampilBuku(buku);
  

}
