import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:architeture/features/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoUseCaseRepository {
  @override
  Either<Exception, bool> call(CarroEntity carroEntity) {
    try {
      // TODO: implement call
      return Right(carroEntity.valor > 0);
    } catch (e) {
      return Left(Exception('repository erro'));
    }
  }
}
