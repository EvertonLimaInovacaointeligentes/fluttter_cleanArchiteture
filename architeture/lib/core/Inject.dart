/*import 'package:architeture/layers/data/datasoruces/get_carros_por_cor_datasource.dart';
import 'package:architeture/layers/data/datasoruces/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:architeture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:architeture/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:architeture/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:architeture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:architeture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usercase.dart';
import 'package:architeture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usercase_imp.dart';
import 'package:architeture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usercase.dart';
import 'package:architeture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usercase_imp.dart';
import 'package:architeture/layers/presetation/controllers/carro_controller.dart';*/

import 'package:architeture/features/layers/data/datasoruces/get_carros_por_cor_datasource.dart';
import 'package:architeture/features/layers/data/datasoruces/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:architeture/features/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:architeture/features/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:architeture/features/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:architeture/features/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:architeture/features/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usercase.dart';
import 'package:architeture/features/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usercase_imp.dart';
import 'package:architeture/features/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usercase.dart';
import 'package:architeture/features/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usercase_imp.dart';
import 'package:architeture/features/layers/presetation/controllers/carro_controller.dart';
import 'package:architeture/features/login/data/datasources/get.login.datasource.dart';
import 'package:architeture/features/login/data/datasources/get.login.datasource.imp.dart';
import 'package:architeture/features/login/data/repositories/get.login.repository.imp.dart';
import 'package:architeture/features/login/domain/repositories/get.login.repository.dart';
import 'package:architeture/features/login/domain/usercases/get.login.usercase.dart';
import 'package:architeture/features/login/domain/usercases/get.login.usercase.imp.dart';
import 'package:architeture/features/login/presetation/controllers/login.controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //datasource
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(
      () => GetCarrosPorCorLocalDataSourceImp(),
    );
    getIt.registerLazySingleton<getLoginDataSource>(
      () => GetLoginDataSourceImp(),
    );
    //repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
      () => GetCarroPorCorRepositoryImp(
        getIt(),
      ),
    );
    getIt.registerLazySingleton<SalvarCarroFavoritoUseCaseRepository>(
      () => SalvarCarroFavoritoRepositoryImp(),
    );
    getIt.registerLazySingleton<GetLoginRepository>(
      () => GetLoginRepositoryImp(
        getIt(),
      ),
    );
    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
      () => GetCarrosPorCorUseCaseImp(
        getIt(),
      ),
    );

    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(
      () => SalvarCarroFavoritoUseCaseImp(
        getIt(),
      ),
    );
    getIt.registerLazySingleton<getLoginUserCase>(
      () => GetLoginUserCaseImp(
        getIt(),
      ),
    );
    //controllers
    getIt.registerFactory<CarroController>(
      () => CarroController(
        getIt(),
        getIt(),
      ),
    );
    getIt.registerFactory<LoginController>(
      () => LoginController(
        getIt(),
      ),
    );
  }
}

/*CarroController contoller = CarroController(
  GetCarrosPorCorUseCaseImp(
    GetCarroPorCorRepositoryImp(
      GetCarrosPorCorLocalDataSourceImp(),
    ),
  ),
  SalvarCarroFavoritoUseCaseImp(
    SalvarCarroFavoritoRepositoryImp(),
  ),
);*/
