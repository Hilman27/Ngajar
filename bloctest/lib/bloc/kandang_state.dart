part of 'kandang_bloc.dart';

@immutable
abstract class KandangState {
  Map<String,String> _kandang = Map<String,String>(
  );

  String mintaSuara(String hewan){
    try{
      if(_kandang.containsKey(hewan)){
        return _kandang[hewan];
      }else return "kosong";
    }catch(error){
      return "Kosong";
    }
  }

  Map<String,String> get ambilSuara{
    return _kandang;
  }

  String kasihSuara(String hewan, String suara){
    _kandang[hewan]=suara;
  }
}

class KandangInitial extends KandangState { 

  KandangInitial(){
    _kandang["kucing"] = "MEEEONNNGGG";
  } 
  @override
  // TODO: implement _kandang
  Map<String, String> get _kandang => super._kandang;
}

class KandangContinue extends KandangState{
  final KandangState reinit;

  KandangContinue(this.reinit);
    
}