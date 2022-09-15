import 'package:flutter/material.dart';

class TransacaoExtratoWidget extends StatelessWidget {
  final String operacao;
  final String nomePessoa;
  final String valor;
  final String tipoTransacao;
  final String dia;

  const TransacaoExtratoWidget(
      {super.key,
      required this.operacao,
      required this.nomePessoa,
      required this.valor,
      required this.tipoTransacao,
      required this.dia});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(Icons.account_balance_wallet_outlined)),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      operacao,
                      style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      nomePessoa,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      valor,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      tipoTransacao,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                dia,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(
              height: 2,
              thickness: 0.3,
              indent: 1,
              endIndent: 1,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
