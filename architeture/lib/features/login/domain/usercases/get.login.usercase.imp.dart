import 'package:architeture/features/login/domain/entities/login.entity.dart';
import 'package:architeture/features/login/domain/repositories/get.login.repository.dart';
import 'package:architeture/features/login/domain/usercases/get.login.usercase.dart';
import 'package:dartz/dartz.dart';

class GetLoginUserCaseImp implements getLoginUserCase {
  final GetLoginRepository _rep;

  GetLoginUserCaseImp(this._rep);

  @override
  Either<Exception, LoginEntity> call(String username, String password) {
    return _rep(username, password);
  }
}
