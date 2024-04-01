import 'package:dartz/dartz.dart';

import 'package:com_lvoxx_urban_dictionary/core/error/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef ResultVoid = ResultFuture<void>;
