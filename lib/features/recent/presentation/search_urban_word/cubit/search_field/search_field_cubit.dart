import 'package:bloc/bloc.dart';

class SearchFieldCubit extends Cubit<bool> {
  SearchFieldCubit() : super(false);

  void focusSearchField() => emit(true);
  void unfocusSearchField() => emit(false);
}
