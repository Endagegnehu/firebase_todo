import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sing_in_form_event.dart';
part 'sing_in_form_state.dart';

class SingInFormBloc extends Bloc<SingInFormEvent, SingInFormState> {
  SingInFormBloc() : super(SingInFormInitial());

  @override
  Stream<SingInFormState> mapEventToState(
    SingInFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
