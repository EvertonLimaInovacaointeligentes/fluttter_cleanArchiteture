import 'package:architeture/features/login/domain/entities/login.entity.dart';

class LoginDto extends LoginEntity {
  String username;
  String password;
  String role;

  LoginDto({
    required this.username,
    required this.password,
    required this.role,
  }) : super(
          username: username,
          password: password,
          role: role,
        );

  topMap() {
    return {
      'login': this.username,
      'senha': this.password,
      'role': this.role,
    };
  }

  /*static LoginDto fromMap(Map map) {
    return LoginDto(
      username: map['login'],
      password: map['senha'],
      role: map['role'],
    );
  }*/
factory LoginDto.fromMap(Map<String,String> map){
  return LoginDto(username: map['login']!, password: map['senha']!, role: map['role']!);
}



}
