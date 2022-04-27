import 'package:architeture/features/login/domain/entities/login.entity.dart';
import 'package:dartz/dartz.dart';

abstract class getLoginUserCase {
  Either<Exception, LoginEntity> call(String username, String password);
}
