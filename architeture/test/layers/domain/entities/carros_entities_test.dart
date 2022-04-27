import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('entidade nao nula', () {
    CarroEntity entity = CarroEntity(
      placa: 'ABC-123',
      qtdPortas: 2,
      valor: 10000.00,
    );
    expect(entity, isNotNull);
  });

  test('valor real seja 2000.00', () {
    CarroEntity entity = CarroEntity(
      placa: 'ABC-123',
      qtdPortas: 2,
      valor: 5000.00,
    );
    var resultadoEsperado = 2000.00;
    expect(entity.valorReal, resultadoEsperado);
  });

  test('numero de porta 2', () {
    CarroEntity entity = CarroEntity(
      placa: 'ABC-123',
      qtdPortas: 2,
      valor: 10000.00,
    );

    expect(entity.qtdPortas, 2);
  });
  test('numero de portas 0', () {
    CarroEntity entity = CarroEntity(
      placa: 'ABC-123',
      qtdPortas: 0,
      valor: 10000.00,
    );

    expect(entity.valorReal, 0);
  });
}
