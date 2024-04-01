import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message, required this.httpStatus});
  final String message;
  final int httpStatus;
  @override
  List<Object> get props => [message, httpStatus];
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message, required super.httpStatus});
}

class NetworkFailure extends Failure {
  const NetworkFailure({required super.message, required super.httpStatus});
}

class CacheFailure extends Failure {
  const CacheFailure({required super.message, required super.httpStatus});
}
