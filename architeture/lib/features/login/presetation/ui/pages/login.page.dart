import 'package:architeture/features/login/data/dto/login.dto.dart';
import 'package:architeture/features/login/presetation/controllers/login.controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final _txtLogin = TextEditingController();
  final _txtSenha = TextEditingController();
  var _controller = GetIt.I.get<LoginController>();

  String? loginDigitado;
  String? senhaDigitada;

  LoginDto? logou;

  @override
  void dispose() {
    // TODO: implement dispose
    _txtLogin.dispose();
    _txtSenha.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                    return 'favor preencher o campo senha';
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
                  //
                  setState(() {
                    var formValid = _formkey.currentState?.validate() ?? false;
                    var message = 'Formulario invalido';
                    if (formValid) {
                      message = 'Bem vindo, ';
                    }
                    logou =
                        _controller.getLogin(_txtLogin.text, _txtSenha.text);
                    if(logou?.username!='') {
                      message+=logou!.username + "!";
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(message)));
                      Future.delayed(Duration(seconds: 5)).whenComplete(
                            () => Navigator.of(context).pushReplacementNamed("/home"),
                      );
                    }
                    else{
                      message='Usuario: ${_txtLogin.text} não encontrado!';
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(message)));

                    }
                  });
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
