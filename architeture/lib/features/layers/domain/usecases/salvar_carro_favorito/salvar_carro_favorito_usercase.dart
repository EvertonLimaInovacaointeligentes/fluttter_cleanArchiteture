
import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:dartz/dartz.dart';

abstract class SalvarCarroFavoritoUseCase {
  Future<Either<Exception,bool>> call(CarroEntity carroEntity);
}
