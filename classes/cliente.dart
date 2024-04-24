import 'brinde.dart';
import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  double dinheiro;
  List<Produto> produtoComprados = [];
  List<Brinde> brindes = [];
  int pontos = 0;

  Cliente(
      {required super.nome,
      required super.cpf,
      required super.dataDeNascimento,
      required super.generos,
      required super.humor,
      this.dinheiro = 0});

  @override
  void falar(String fala) {
    print("Cliente ${super.nome} diz: $fala");
  }

  void ordenarProdutosComprados() {
    this.produtoComprados.sort((a, b) => b.nome.compareTo(a.nome));
  }

  void _exibirProdutosComValor() {
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

  void consultarTotalPontos() =>
      print("${this.nome} possui ${this.pontos} pontos");

  void comprarProduto(Produto produto, Revendedor revendedor) {
    if (dinheiro >= produto.valor) {
      try {
        revendedor.venderProduto(produto);
        this.dinheiro -= produto.valor;
        produtoComprados.add(produto);
        this.pontos++;
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
        _exibirProdutosComValor();
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

  void _ordenarBrindes() {
    brindes.sort((a, b) => a.nome.compareTo(b.nome));
    brindes.forEach((brinde) {
      print("${brinde.nome}");
    });
  }

  void trocarPontosProBrinde(Brinde brinde) {
    try {
      if (this.pontos >= brinde.pontosNecessarios) {
        brinde.realizarTroca();
        brindes.add(brinde);
      } else {
        print(
            "${this.nome} não possui pontos suficientes para trocar pelo brinde ${brinde.nome}");
      }
    } on FormatException catch (e) {
      print(e.message);
    }
  }

  void verBrindes() {
    print("Brindes recebidos por ${this.nome} :");
    _ordenarBrindes();
  }
}
