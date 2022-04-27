import 'package:architeture/features/layers/data/datasoruces/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:architeture/features/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:architeture/features/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usercase.dart';
import 'package:architeture/features/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usercase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarroPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );
    var result = useCase('azul');
    late CarroEntity resultadoExpect;
    result.fold((l) => null, (r) => resultadoExpect = r);
    expect(resultadoExpect, isInstanceOf<CarroEntity>());
  });
  test('deve retornar um carro de 4 portas quando for vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarroPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );
    var result = useCase('vermelho');
    late CarroEntity resultadoExpect;
    result.fold((l) => null, (r) => resultadoExpect = r);
    expect(resultadoExpect.qtdPortas, 4);
  });

  test(
      'deve retornar um carro de 2 portas quando for qualquer cor exceto vermelho',
      () {
        GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
          GetCarroPorCorRepositoryImp(
            GetCarrosPorCorLocalDataSourceImp(),
          ),
        );
    var result = useCase('verde');
    late CarroEntity resultadoExpect;
    result.fold((l) => null, (r) => resultadoExpect = r);
    expect(resultadoExpect.qtdPortas, 2);
  });
}
