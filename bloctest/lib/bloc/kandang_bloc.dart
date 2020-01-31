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
    // TODO: Add Logic
  }
}
