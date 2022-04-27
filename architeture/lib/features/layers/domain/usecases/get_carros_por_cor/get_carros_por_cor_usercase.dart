
import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorUseCase {
  Either<Exception,CarroEntity> call(String cor);
}
