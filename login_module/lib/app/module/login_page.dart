import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final maskCpf = MaskTextInputFormatter(
        mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 48.0),
                child: Text(
                  'Faça seu login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: TextFormField(
                    inputFormatters: [maskCpf],
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(labelText: 'CPF')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextFormField(
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'SENHA',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: MaterialButton(
                  onPressed: () {
                    Modular.to.navigate('/home/');
                  },
                  height: 48,
                  minWidth: double.infinity,
                  color: Colors.blue,
                  child: const Text(
                    'CONTINUAR',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
