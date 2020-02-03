import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


part 'kandang_event.dart';
part 'kandang_state.dart';

class KandangBloc extends Bloc<KandangEvent, KandangState> {
  @override
  KandangState get initialState => KandangInitial();

  @override
  Stream<KandangState> mapEventToState(
    KandangEvent event,
  ) async* {
    if(event is TambahHewan){
      state.kasihSuara(event.hewan, event.suara);
      yield KandangContinue(state._kandang);
    }
  }
}
