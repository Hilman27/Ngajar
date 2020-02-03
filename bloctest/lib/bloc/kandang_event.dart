part of 'kandang_bloc.dart';

@immutable
abstract class KandangEvent {}

class TambahHewan extends KandangEvent{
  final hewan;
  final suara;

  TambahHewan(this.hewan, this.suara);
}