import 'package:architeture/features/login/data/dto/login.dto.dart';
import 'package:dartz/dartz.dart';

abstract class getLoginDataSource {
  Either<Exception, LoginDto> call(String username, String password);
}
