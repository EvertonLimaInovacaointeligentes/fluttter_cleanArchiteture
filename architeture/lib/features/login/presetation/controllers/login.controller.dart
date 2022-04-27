import 'package:architeture/features/login/data/dto/login.dto.dart';
import 'package:architeture/features/login/domain/entities/login.entity.dart';
import 'package:architeture/features/login/domain/usercases/get.login.usercase.dart';

class LoginController {
  final getLoginUserCase _userlogin;

  LoginController(this._userlogin);

  late LoginEntity login;

  LoginDto getLogin(String username, String senha) {
    var retorno=LoginDto(username: '',password: '',role:'');
    var result = _userlogin(username, senha);

    result.fold(
      (erro) => retorno=(erro as LoginDto),
      (sucess) => retorno=(sucess as LoginDto),
    );
    return retorno;
  }
}
