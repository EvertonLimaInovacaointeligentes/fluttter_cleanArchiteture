
import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:dartz/dartz.dart';

abstract class SalvarCarroFavoritoUseCaseRepository{
  Either<Exception,bool> call(CarroEntity carroEntity);
}