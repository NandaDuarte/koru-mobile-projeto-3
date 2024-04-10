import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  double dinheiro;
  List<Produto> produtosComprados = [];

  Cliente(super.nome, super.cpf, super.dataDeNascimento, super.generos,
      [this.dinheiro = 0.0]);

  @override
  void falar(String fala) {
    print("Cliente ${super.nome} diz: $fala");
  }

  void adicionarDinheiro(double valor) {
    this.dinheiro += valor;
    print(
        'Agora a pessoa ${super.nome} possui: ${this.dinheiro.toStringAsFixed(2)} reais.');
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    if (dinheiro >= produto.valor) {
      revendedor.venderProduto(produto);
      this.dinheiro -= produto.valor;
      produtosComprados.add(produto);
      print(
          '${super.nome} comprou o produto ${produto.nome} por ${produto.valor.toStringAsFixed(2)} reais.');
    } else {
      print(
          '${super.nome} não possui dinheiro suficiente para comprar o produto ${produto.nome}.');
    }
  }
  void verProdutosComprados() {
    if (this.produtosComprados.isNotEmpty) {
      List<Produto> sortedList = this.produtosComprados;
      sortedList.sort((a, b) => a.nome.compareTo(b.nome));
      print("Produtos comprados por ${super.nome}: ");
      for (int i = 0; i < (sortedList.length); i++) {
        print("${sortedList[i].nome} - ${sortedList[i].valor.toStringAsFixed(2)}");
        }
      }
      else {
        print("Não há produtos comprados!");
      }
    }
  }
