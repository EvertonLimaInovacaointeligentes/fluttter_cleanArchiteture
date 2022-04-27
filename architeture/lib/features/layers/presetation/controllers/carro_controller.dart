import 'package:architeture/features/layers/domain/entities/carro.entity.dart';
import 'package:architeture/features/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usercase.dart';
import 'package:architeture/features/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usercase.dart';

class CarroController {
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoritoUseCase _salvarCarroFavoritoUseCase;

  CarroController(
    this._getCarrosPorCorUseCase,
    this._salvarCarroFavoritoUseCase,
  ) {
    getCarrosPorCor('verde');
  }

  late CarroEntity carro;

  getCarrosPorCor(String cor) {
    var result = _getCarrosPorCorUseCase(cor);
    result.fold(
      (erro) => print(erro.toString()),
      (sucess) => carro = sucess,
    );
  }

  salvarCarroFavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUseCase(carro);
  }
}
