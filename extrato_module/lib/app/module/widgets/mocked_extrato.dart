class Extrato {
  final String operacao;
  final String nomePessoa;
  final String valor;
  final String tipoTransacao;
  final String dia;

  Extrato(
      this.operacao, this.nomePessoa, this.valor, this.tipoTransacao, this.dia);
}

List<Extrato> listExtrato = [
  Extrato('Transferência recebida', 'Fernando Rodrigues de Moraes',
      'R\$ 100,35', 'Pix', 'Hoje'),
  Extrato('Transferência realizada', 'Fernando Rodrigues de Moraes',
      'R\$ 255,00', 'Pix', 'Hoje'),
  Extrato('Transferência recebida', 'Fernando Rodrigues de Moraes',
      'R\$ 1.535,22', 'Pix', 'Hoje'),
  Extrato('Pagamento', 'Fulanos Churrascaria', 'R\$ 80,70', 'Crédito', 'Hoje'),
  Extrato('Pagamento', 'Oficina Ciclano', 'R\$ 600,00', 'Débito', 'Ontem'),
  Extrato('Transferência recebida', 'Fulano Ciclano de Tal', 'R\$ 60,50', 'Pix',
      'Ontem'),
  Extrato('Compra', 'Super Shopping', 'R\$ 70,10', 'Pix', 'Ontem'),
  Extrato('Transferência realizada', 'Ronaldo', 'R\$ 54,12', 'TED', 'Ontem'),
  Extrato('Transferência recebida', 'Fernando Rodrigues de Moraes',
      'R\$ 900,50', 'Pix', '10/09'),
];
