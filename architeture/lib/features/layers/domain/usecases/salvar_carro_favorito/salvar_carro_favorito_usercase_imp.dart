
import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:architeture/features/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:architeture/features/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usercase.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoUseCaseRepository _salvarCarroFavoritoRespository;

  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRespository);

  @override
  Future<Either<Exception,bool>> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    return await _salvarCarroFavoritoRespository(carroEntity);
  }
}
