import 'package:equatable/equatable.dart';

class UrbanWordParam extends Equatable {
  final String param;
  UrbanWordParam({required this.param});

  @override
  List<Object?> get props => [param];
}
