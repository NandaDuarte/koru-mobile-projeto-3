import 'Brinde.dart';
import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  double dinheiro;
  List<Produto> produtoComprados = [];
  List<Brinde> brinds = [];
  int pontos = 0;

  Cliente(
      {required super.nome,
      required super.cpf,
      required super.dataDeNascimento,
      required super.generos,
      this.dinheiro = 0});

  @override
  void falar(String fala) {
    print("Cliente ${super.nome} diz: $fala");
  }

  void ordenarProdutosComprados() {
    this.produtoComprados.sort((a, b) => b.nome.compareTo(a.nome));
  }

  void exibirProdutosComValor() {
    ordenarProdutosComprados();
    print("# Produtos comprados por ${super.nome}:");
    produtoComprados.forEach((produtos) {
      print(" -- ${produtos.nome} - ${produtos.valor.toStringAsFixed(2)}");
    });
    print("\n");
  }

  void adicionarDinheiro(double valor) {
    this.dinheiro += valor;
    print(
        'Agora a pessoa ${super.nome} possui: ${this.dinheiro.toStringAsFixed(2)} reais.');
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    if (dinheiro >= produto.valor) {
      try {
        revendedor.venderProduto(produto);
        this.dinheiro -= produto.valor;
        produtoComprados.add(produto);
        print(
            '${super.nome} comprou o produto ${produto.nome} por ${produto.valor.toStringAsFixed(2)} reais.');
      } catch (error) {
        print('operação não pode ser concluida,erro:$error');
      }
    } else {
      print(
          '${super.nome} não possui dinheiro suficiente para comprar o produto ${produto.nome}.');
    }
  }

  double _calcularTotalGasto() {
    double total = 0.0;
    for (var produto in produtoComprados) {
      total += produto.valor;
    }
    return total;
  }

  void verProdutosComprados() {
    try {
      if (produtoComprados.length > 0) {
        exibirProdutosComValor();
      } else {
        throw ("${super.nome} não comprou produto.");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  double _calcularMediaProdutosComprados() {
    try {
      if (!produtoComprados.isEmpty) {
        double resultado = 0.0;
        this.produtoComprados.forEach((comprados) {
          resultado += comprados.valor;
        });
        return resultado / produtoComprados.length;
      } else {
        throw new FormatException();
      }
    } catch (e) {
      return 0.0;
    }
  }

  void verResumo() => print(
      "O total gasto por ${super.nome} foi de ${_calcularTotalGasto().toStringAsFixed(2)} reais e a média de valor dos produtos comprados é ${_calcularMediaProdutosComprados().toStringAsFixed(2)} reais ");
}
