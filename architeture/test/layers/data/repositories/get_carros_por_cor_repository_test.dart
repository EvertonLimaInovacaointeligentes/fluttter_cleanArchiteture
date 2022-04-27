import 'package:architeture/features/layers/data/datasoruces/get_carros_por_cor_datasource.dart';
import 'package:architeture/features/layers/data/datasoruces/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:architeture/features/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:architeture/features/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarrosPorCorDataSource _getCarrosPorCorDataSource=GetCarrosPorCorLocalDataSourceImp();
  GetCarrosPorCorRepository repositorio = GetCarroPorCorRepositoryImp(_getCarrosPorCorDataSource);
  test('Devolva um carro independeite de cor', () {
    var result = repositorio('qualquer');

    expect(result, isNotNull);
  });
}
