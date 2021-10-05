import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:coba_bloc/services/services.dart';
import 'package:equatable/equatable.dart';

part 'rajaongkir_event.dart';
part 'rajaongkir_state.dart';

class RajaongkirBloc extends Bloc<RajaongkirEvent, RajaongkirState> {
  RajaongkirBloc() : super(RajaongkirInitial());

  @override
  Stream<RajaongkirState> mapEventToState(
    RajaongkirEvent event,
  ) async* {
    if (event is ChangeOngkir) {
      String ongkir = '';
      await RajaongkirService.getOngkir('501', '114', 'jne', 1000)
          .then((value) {
        var jsonObj = json.decode(value.body);
        ongkir = jsonObj['rajaongkir']['results'].toString();
      });
      yield RajaongkirValue(ongkir);
    }
  }
}
