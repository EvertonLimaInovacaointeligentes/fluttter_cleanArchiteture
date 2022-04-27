import 'package:architeture/features/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:architeture/features/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usercase.dart';
import 'package:architeture/features/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usercase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );
    var carro = CarroEntity(placa: 'BCC-992', qtdPortas: 2, valor: 1);
    var result = await useCase(carro);
    late bool resultadoExpect;
    result.fold((l) => null, (r) => resultadoExpect = r);
    expect(resultadoExpect, true);
  });

  test('Espero que não salve o carro quando o valor for menor ou igual a zero',
      () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );
    var carro = CarroEntity(placa: 'BCC-992', qtdPortas: 2, valor: 0);
    var result = await useCase(carro);
    late bool resultadoExpect;
    result.fold((l) => null, (r) => resultadoExpect = r);
    expect(resultadoExpect, false);
  });
}
