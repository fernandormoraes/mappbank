import 'package:common/widgets/carousel_function_widget.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:extrato_module/app/module/widgets/mocked_extrato.dart';
import 'package:extrato_module/app/module/widgets/transacao_extrato_widget.dart';
import 'package:flutter/material.dart';

class ExtratoPage extends StatelessWidget {
  const ExtratoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Modular.to.pop(),
                      icon: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                        size: 20,
                      ),
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
                      'Saldo disponível',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0, bottom: 48),
                      child: Text(
                        'R\$ 72.000,00',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.savings_outlined,
                          color: Colors.black87,
                          size: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dinheiro guardado',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                'R\$ 1.560,00',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey.shade500,
                          size: 16,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.analytics_outlined,
                            color: Colors.black87,
                            size: 22,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rendimento',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  '+R\$ 654,45',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey.shade500,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  height: 100,
                  child: Center(
                    child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: const [
                          SizedBox(
                            width: 24,
                          ),
                          CarouselFunctionWidget(
                              onPressed: null,
                              title: 'Transferir',
                              icon: Icons.currency_exchange),
                          CarouselFunctionWidget(
                              onPressed: null,
                              title: 'Pagar',
                              icon: Icons.qr_code),
                          CarouselFunctionWidget(
                              onPressed: null,
                              title: 'Recarga',
                              icon: Icons.smartphone),
                          CarouselFunctionWidget(
                              onPressed: null,
                              title: 'Exportar',
                              icon: Icons.data_exploration_outlined),
                          Padding(
                            padding: EdgeInsets.only(right: 24.0),
                            child: CarouselFunctionWidget(
                                onPressed: null,
                                title: 'Investir',
                                icon: Icons.graphic_eq_rounded),
                          ),
                        ]),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Divider(
                  height: 2,
                  thickness: 0.3,
                  indent: 1,
                  endIndent: 1,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, right: 24, bottom: 16),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 1.0,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: const [
                        Icon(Icons.currency_exchange),
                        Padding(
                          padding: EdgeInsets.only(left: 12, right: 24.0),
                          child: Text(
                            'Até R\$ 10.000,00 disponíveis\npara empréstimo.',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 13),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 12.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: const [
                    Text(
                      'Histórico',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 36.0),
                child: SizedBox(
                  height: listExtrato.length * 82,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: ListView.builder(
                          itemCount: listExtrato.length,
                          itemBuilder: (BuildContext context, int index) =>
                              TransacaoExtratoWidget(
                                  operacao: listExtrato[index].operacao,
                                  nomePessoa: listExtrato[index].nomePessoa,
                                  valor: listExtrato[index].valor,
                                  tipoTransacao:
                                      listExtrato[index].tipoTransacao,
                                  dia: listExtrato[index].dia))),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
