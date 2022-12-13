import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackaton/data/models/faculty.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(_AppState(
          appStatus: AppStatus.initializing,
          connectionStatus: ConnectionStatus.online,
          faculty: Faculty(),
        )) {
    on<_Loading>(_onLoading);
  }

  Future<void> _onLoading(_Loading event, Emitter<AppState> emit) async {}
}
