class Brinde {
  String nome;
  int pontosNecessarios;
  int qntEmEstoque;

  Brinde(
      {required this.nome,
      required this.pontosNecessarios,
      required this.qntEmEstoque});

  void consultarPontosNecessarios() {
    print(
        "Para ganhar um(a) ${this.nome} você precisa de ${this.pontosNecessarios} pontos.");
  }

  void realizarTroca() {
    if (this.qntEmEstoque > 0) {
      this.qntEmEstoque--;
      print("Troca realizada! Você ganhou um(a) ${this.nome}.");
    }else{
      throw("No momento não possuímos o produto ${this.nome} em estoque.");
    }
  }

  int consultaQtdeEmEstoque() => this.qntEmEstoque;
  
}
