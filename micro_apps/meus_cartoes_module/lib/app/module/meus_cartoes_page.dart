import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:meus_cartoes_module/app/module/meus_cartoes_store.dart';
import 'package:meus_cartoes_module/app/module/widgets/cartao_widget.dart';

class MeusCartoesPage extends StatelessWidget {
  final MeusCartoesStore store = Modular.get<MeusCartoesStore>();

  MeusCartoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
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
                    const Text(
                      'Meus cartões',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Cartão físico',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Observer(
                        builder: (context) => SizedBox(
                              height: store.listCards
                                      .where((element) => element.fisico)
                                      .length *
                                  60,
                              child: ListView.builder(
                                  itemCount: store.listCards
                                      .where((element) => element.fisico)
                                      .length,
                                  itemBuilder: (_, int index) => CartaoWidget(
                                      cartaoEntity: store.listCards
                                          .where((element) => element.fisico)
                                          .elementAt(index))),
                            )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Cartão virtual',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Observer(
                        builder: (context) => SizedBox(
                              height: store.listCards
                                      .where((element) => !element.fisico)
                                      .length *
                                  60,
                              child: ListView.builder(
                                  itemCount: store.listCards
                                      .where((element) => !element.fisico)
                                      .length,
                                  itemBuilder: (_, int index) => CartaoWidget(
                                      cartaoEntity: store.listCards
                                          .where((element) => !element.fisico)
                                          .elementAt(index))),
                            ))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Divider(
                  height: 2,
                  thickness: 0.3,
                  indent: 1,
                  endIndent: 1,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                    Text(
                      ' Criar cartão virtual',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
