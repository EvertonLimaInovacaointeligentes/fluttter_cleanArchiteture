import 'package:architeture/features/layers/data/datasoruces/get_carros_por_cor_datasource.dart';
import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:architeture/features/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:dartz/dartz.dart';

class GetCarroPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;

  GetCarroPorCorRepositoryImp(this._getCarrosPorCorDataSource);

  @override
  Either<Exception,CarroEntity> call(String cor) {
    return _getCarrosPorCorDataSource(cor);
  }
}
