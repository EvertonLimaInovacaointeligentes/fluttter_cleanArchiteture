import 'package:architeture/features/login/data/dto/login.dto.dart';
import 'package:dartz/dartz.dart';
import 'get.login.datasource.dart';

class GetLoginDataSourceImp extends getLoginDataSource {
  var jsonLogin = {'login': 'everton', 'senha': '123456', 'role': 'admin'};
  final jsonAny = {'login': '', 'senha': '', 'role': ''};

  @override
  Either<Exception, LoginDto> call(String username, String password) {
    try {
      if (username.isNotEmpty && password.isNotEmpty) {
        if (username.toLowerCase() == 'everton' && password == '123456') {
          return Right(
            LoginDto.fromMap(jsonLogin),
          );
        } else {
          return Right(
            LoginDto.fromMap(jsonAny),
          );
        }
      }
      return Right(LoginDto.fromMap(jsonAny));
    } catch (e) {
      return Left(
        Exception("Erro: Login ou senha são campos obrigatorios!"),
      );
    }
  }
}
