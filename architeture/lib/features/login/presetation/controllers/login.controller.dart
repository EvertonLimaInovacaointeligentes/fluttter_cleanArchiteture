import 'package:architeture/features/login/data/dto/login.dto.dart';
import 'package:architeture/features/login/domain/usercases/get.login.usercase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginController {
  final getLoginUserCase _userlogin;

  LoginController(this._userlogin);

  ValueNotifier<LoginDto?> posts = ValueNotifier<LoginDto?>(null);

  LoginDto get postsCarregado=> posts.value!;

  void getLogin2(String username, String senha) {
    var retorno = LoginDto(username: '', password: '', role: '');
    var result = _userlogin(username, senha);

    result.fold(
          (erro) => posts.value = (erro as LoginDto),
          (sucess) => posts.value = (sucess as LoginDto),
    );
  }

  LoginDto getLogin(String username, String senha) {
    var retorno = LoginDto(username: '', password: '', role: '');
    var result = _userlogin(username, senha);

    result.fold(
      (erro) => retorno = (erro as LoginDto),
      (sucess) => retorno = (sucess as LoginDto),
    );
    return retorno;
  }
}
