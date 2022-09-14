import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';

class DestinoPixPage extends StatefulWidget {
  final String valor;

  const DestinoPixPage({super.key, required this.valor});

  @override
  State<DestinoPixPage> createState() => _DestinoPixPageState();
}

class _DestinoPixPageState extends State<DestinoPixPage> {
  String chave = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: chave.isEmpty
            ? null
            : Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  onPressed: () {
                    Modular.to.pushNamed('/area_pix/sucesso_pix/',
                        arguments: widget.valor);
                  },
                  height: 36,
                  minWidth: 250,
                  elevation: 0,
                  color: Colors.blue,
                  child: const Text(
                    'Transferir para esta chave',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Modular.to.pop(),
                    icon: const Icon(Icons.close),
                    color: Colors.grey.shade500,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.help_outline_outlined,
                    color: Colors.grey.shade500,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Para quem vai a sua transferência de ${widget.valor}?',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: TextFormField(
                      onChanged: (String valor) {
                        setState(() {
                          chave = valor;
                        });
                      },
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          labelText: 'CPF ou Chave PIX',
                          labelStyle: TextStyle(color: Colors.grey),
                          focusColor: Colors.grey,
                          hoverColor: Colors.grey,
                          fillColor: Colors.grey,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
