
import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorRepository{
  Either<Exception,CarroEntity> call(String cor);
}