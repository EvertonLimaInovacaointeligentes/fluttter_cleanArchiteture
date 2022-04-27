import 'package:architeture/features/login/data/dto/login.dto.dart';
import 'package:architeture/features/login/presetation/controllers/login.controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LoginPage2 extends StatelessWidget {
  LoginPage2({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();
  final _txtLogin = TextEditingController();
  final _txtSenha = TextEditingController();
  var _controller = GetIt.I.get<LoginController>();
  ValueNotifier<String> _login=ValueNotifier<String>("");
  ValueNotifier<String> _senha=ValueNotifier<String>("");

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
              ValueListenableBuilder(valueListenable: _login, builder: (_, value, __) => Text('Resultado: $value'),),
              ValueListenableBuilder(valueListenable: _senha, builder: (_, value, __) => Text('Resultado: $value'),),
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
              ElevatedButton(
                onPressed: () {
                 _login.value=_txtLogin.text;
                 _senha.value=_txtSenha.text;
                  var message = 'ok';
                    logou = _controller.getLogin(_txtLogin.text, _txtSenha.text);

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(message + logou!.username + "!")));
                    Future.delayed(Duration(seconds: 5)).whenComplete(
                          () => Navigator.of(context).pushNamed("/home"),
                    );

                },
                child: Text('Acessar'),
              ),
            ],
          ),
          // ),
        ),
      ),
    );
  }
}
