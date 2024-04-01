import 'package:flutter_bloc/flutter_bloc.dart';

class HintButtonCubit extends Cubit<List<bool>> {
  HintButtonCubit()
      : super(<bool>[
          false,
          false,
          false,
          false,
          false,
        ]);
  void assignClickedTheme(int index) {
    final currentState = state;
    currentState[index] = !state[index];
    emit(List.from(currentState));
  }

  void assignSuperState() {
    state[0] = false;
    state[1] = false;
    state[2] = false;
    state[3] = false;
    state[4] = false;
    final currentState = state;
    emit(currentState);
  }
}
