import 'package:architeture/features/layers/data/dto/carro_dto.dart';
import 'package:dartz/dartz.dart';

import '../get_carros_por_cor_datasource.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {
  final jsonVermelho = {
    'placa': 'ABC123',
    'quantidadeDePortas': 4,
    'valorFinal': 10000.00,
  };
  final jsonAny = {
    'placa': 'QWE444',
    'quantidadeDePortas': 2,
    'valorFinal': 20000.00,
  };

  @override
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains('vermelho')) {
        return Right(CarroDto.fromMap(jsonVermelho));
      }
      return Right(CarroDto.fromMap(jsonAny));
    } catch (e) {
      return Left(Exception('Erro data sorce'));
    }
  }
}
