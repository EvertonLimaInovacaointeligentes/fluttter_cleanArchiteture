import 'package:architeture/features/login/data/dto/login.dto.dart';
import 'package:architeture/features/login/domain/entities/login.entity.dart';
import 'package:architeture/features/login/presetation/controllers/login.controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LoginPage2 extends StatefulWidget {
  LoginPage2({Key? key}) : super(key: key);

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  final _formkey = GlobalKey<FormState>();

  final _txtLogin = TextEditingController();

  final _txtSenha = TextEditingController();

  var _controller = GetIt.I.get<LoginController>();

  ValueNotifier<String> _login = ValueNotifier<String>("");

  ValueNotifier<String> _senha = ValueNotifier<String>("");

  String? loginDigitado;

  String? senhaDigitada;

  LoginDto? logou;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login pagina 2'),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          // child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: _txtLogin,
                decoration: InputDecoration(
                  icon: Icon(Icons.supervised_user_circle),
                  labelText: 'Login',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  isDense: true,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                maxLines: null,
                keyboardType: TextInputType.text,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'favor preencher o campo login';
                  }
                },
                onChanged: (String value) {
                  //campo de login digitado
                  loginDigitado = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: _txtSenha,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'senha',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  isDense: true,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                //maxLines: null,
                keyboardType: TextInputType.visiblePassword,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'favor preencher o campo login';
                  }
                },
                onChanged: (String value) {
                  //campo de login digitado
                  loginDigitado = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              ValueListenableBuilder<LoginEntity?>(
                  valueListenable: _controller.posts,
                  builder: (context, LoginEntity? posts, __) {
                    return ElevatedButton(
                      onPressed: () {

                        var message = 'Bem vindo ';
                         _controller.getLogin2(
                            _txtLogin.text, _txtSenha.text);

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(message + _controller.postsCarregado.username + "!")));
                        Future.delayed(Duration(seconds: 5)).whenComplete(
                              () => Navigator.of(context).pushReplacementNamed("/home"),
                        );
                      },
                      child: Text('Acessar'),
                    );
                  }),
            ],
          ),
          // ),
        ),
      ),
    );
  }
}
