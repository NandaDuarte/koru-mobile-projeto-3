class Produto {
  String nome;
  double valor;
  int qtdVendida = 0;
  int qtdEmEstoque;

  Produto(
      {required this.nome, required this.valor, required this.qtdEmEstoque});

  void realizarVenda() {
    if (this.qtdEmEstoque > 0) {
      this.qtdVendida++;
      this.qtdEmEstoque--;

     // print("Compra de um(a) produto ${this.nome} realizada com sucesso!");
    } else {
      throw "No momento não possuímos o produto ${this.nome} em estoque";
    }
  }

  double verReceitaGerada() {
    return this.valor * this.qtdVendida;
  }
}
