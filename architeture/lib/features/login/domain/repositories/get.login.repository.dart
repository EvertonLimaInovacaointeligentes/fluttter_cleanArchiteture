import 'package:architeture/features/login/domain/entities/login.entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetLoginRepository {
  Either<Exception, LoginEntity> call(String username,String password);
}
