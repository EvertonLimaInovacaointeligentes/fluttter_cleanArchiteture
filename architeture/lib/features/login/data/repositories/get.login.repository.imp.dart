import 'package:architeture/features/login/data/datasources/get.login.datasource.dart';
import 'package:architeture/features/login/domain/entities/login.entity.dart';
import 'package:architeture/features/login/domain/repositories/get.login.repository.dart';
import 'package:dartz/dartz.dart';

class GetLoginRepositoryImp extends GetLoginRepository{

  final getLoginDataSource _data;

  GetLoginRepositoryImp(this._data);

  @override
  Either<Exception, LoginEntity> call(String username, String password) {
    return _data(username,password);
  }

}