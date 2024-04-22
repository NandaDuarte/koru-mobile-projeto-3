// Importações dos arquivos que serão utilizados

import 'classes/cliente.dart';
import 'classes/enums.dart';
import 'classes/pessoa.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'utils.dart';

/**
 * RECOMENDAÇÕES DA TUTORA
 * 
 * Arquivo de testes e execução do sistema criado.
 * Os testes para o sistema se darão todos através de prints no console.
 * 
 * Abaixo você encontrará o método main, que é o método principal que será executado.
 * 
 * Para executar esse arquivo, digite o seguinte comando no terminal: dart run main.dart
 * Outra alternativa é instalar a extensão Dart no seu VS Code.
 * Isso fará aparecer um botão tipo "play" no canto direito superior. Basta clicar para executar o projeto.
 * 
 * Dentro do método main, vocês encontrarão indicações para criar objetos das classes criadas e executar os métodos criados.
 * Recomenda-se que essas declarações e execuções sejam feitas a medida que vocês forem criando as classes e métodos pedidos,
 * pois isso servirá para testar se o que você fez está funcionando.
 * 
 * Não se prendam apenas aos comentários e recomendações. Façam todos os testes que quiserem fazer.
 * 
 * Existe um método "pularLinha" que foi criado dentro do arquivo utils.
 * Caso queiram, utilizem-no para pular linha entre um bloco de testes e outro,
 * apenas por questões de organização e melhor visualização das saídas.
 * Para executá-lo, basta chamá-lo em qualquer ponto do método main, dessa maneira:
 * pularLinha();
 */

main() {
  /* Declaração de objetos Produto */
  // pularLinha();
  // Declare aqui alguns objetos do tipo Produto...
  // Exemplo: Produto produtoA = Produto("Colônia Floratta Flores Secretas 75ml", 104.90, 3);
  Produto parfumLily = Produto("parfumLily", 291.51, 20);
  /* Testes da classe Produto */
  Produto bleu = Produto("Ultra Bleu Desodorante Colônia 100ml", 179.90, 10);
  pularLinha();
  Produto verano =
      Produto("Verano en Firenze Eau de Parfum Floral Frutal75 ml", 164.00, 30);
  // Teste o método realizarVenda algumas vezes...
  // Exemplo: produtoA.realizarVenda();
  // Saída esperada 1: Compra de um produto Colônia Floratta Flores Secretas 75ml realizada com sucesso!
  // Saída esperada 2: No momento não possuímos o produto Colônia Floratta Flores Secretas 75ml em estoque.
  parfumLily.realizarVenda();
  pularLinha();
  bleu.realizarVenda();
  bleu.realizarVenda();
  pularLinha();
  verano.realizarVenda();
  verano.realizarVenda();
  // Teste o método verReceitaGerada algumas vezes...
  // Exemplo: print(produtoA.verReceitaGerada());
  print(
      "Produto ${parfumLily.nome} gerou receita de: ${parfumLily.verReceitaGerada().toStringAsFixed(2)}");
  pularLinha();
  print(
      "Produto ${bleu.nome} gerou receita de: ${bleu.verReceitaGerada().toStringAsFixed(2)}");

  pularLinha();
  print(
      "Produto ${verano.nome} gerou receita de: ${verano.verReceitaGerada().toStringAsFixed(2)}");

  /* ------------------------------------------ */

  /* Declaração de objetos Pessoa */

  // Declare aqui alguns objetos do tipo Pessoa...
  // Exemplo: Pessoa pessoaA = Pessoa('Maria', '12345678900', 1994);
  Pessoa pessoa1 = Pessoa(
      nome: "maria",
      cpf: "452464545452",
      dataDeNascimento: DateTime.parse("1980-04-12"),
      generos: Genero.feminino);
  pularLinha();

  Pessoa pessoa2 = Pessoa(
      nome: "jose",
      cpf: "121212121212",
      dataDeNascimento: DateTime.parse("2012-12-12"),
      generos: Genero.masculino);

  /* Testes da classe Pessoa */

  // Teste o método falar algumas vezes...
  // Exemplo: pessoaA.falar('Oi, tudo bem?');
  // Saída esperada: Maria diz: Oi, tudo bem?
  pessoa1.falar("oi,tudo bem, qual shampoo recomenda para meus cabelos?");
  pularLinha();
  pessoa2.falar("Olá tudo bem? Tem o perfume Gold Desodorante Colônia");

  // Teste o método maioridade algumas vezes...
  // Exemplo: pessoaA.maioridade();
  // Saída esperada 1: Maria tem 30 anos, portanto é maior de idade.
  // Saída esperada 2: João tem 14 anos, portanto é menor de idade.
  pessoa1.maioridade();
  pularLinha();
  pessoa2.maioridade();
  pularLinha();
  Cliente cliente1 = Cliente(
      nome: "rosa",
      cpf: "12121212121",
      dataDeNascimento: DateTime.parse("1990-10-20"),
      generos: Genero.feminino);
  Cliente cliente2 = Cliente(
      nome: "francisco",
      cpf: "34525254689",
      dataDeNascimento: DateTime.parse("1960-12-25"),
      generos: Genero.masculino);
  pularLinha();
  cliente1.falar("Quero ganhar o  Balm Hidratante Labial Nativa Spa Lilac");
  pularLinha();
  cliente2.falar("quero experimentar o Malbec Ultra Bleu Desodorante Colônia");

  pularLinha();
  Cliente cliente3 = Cliente(
      nome: 'João',
      cpf: '5362578725',
      dataDeNascimento: DateTime.parse('2024-03-21'),
      generos: Genero.masculino);
  cliente3.adicionarDinheiro(250.00);
  cliente3.adicionarDinheiro(50.00);

  /* ------------------------------------------ */

  Revendedor func1 = Revendedor(
      nome: "Marcelo",
      cpf: "12345179068",
      dataDeNascimento: DateTime.parse("1950-01-02"),
      generos: Genero.masculino,
      matricula: "101220");
  func1.falar(
      "Olá boa tarde, tudo bem? já conhece nossos produtos? temos varias fragrâncias.");
  Revendedor func2 = Revendedor(
      nome: "Antonela",
      cpf: "02131586547",
      dataDeNascimento: DateTime.parse("1980-05-15"),
      generos: Genero.feminino,
      matricula: "10420");
  func2.falar(
      "Olá bom dia tuo bem! me chamo Antonela e irei aprensentar nosso catálago");
  print("Lucro : ${func1.calcularLucro().toStringAsFixed(2)}");
  print("Lucro : ${func2.calcularLucro().toStringAsFixed(2)}");
  pularLinha();
  Cliente cliente4 = Cliente(
      nome: 'Vinicius',
      cpf: '3322578212',
      dataDeNascimento: DateTime.parse('2024-01-16'),
      generos: Genero.masculino);
  cliente4.adicionarDinheiro(3500.00);
  cliente4.comprarProduto(verano, func1);
  cliente4.comprarProduto(bleu, func1);
  cliente4.comprarProduto(parfumLily, func1);
  cliente4.comprarProduto(verano, func1);
  cliente4.comprarProduto(bleu, func1);

  cliente3.comprarProduto(verano, func1);

  cliente3.verProdutosComprados();
  cliente4.verProdutosComprados();

  Cliente cliente5 = new Cliente(
      nome: "Adevalter",
      cpf: "123654789-11",
      dataDeNascimento: DateTime.parse("1974-08-22"),
      generos: Genero.masculino);
  cliente5.verProdutosComprados();

  Cliente cliente6 = new Cliente(
      nome: "Adevalter",
      cpf: "123654789-11",
      dataDeNascimento: DateTime.parse("1974-08-22"),
      generos: Genero.masculino);
  cliente6.adicionarDinheiro(1000.00);
  cliente6.comprarProduto(verano, func1);
  cliente6.comprarProduto(bleu, func1);
  cliente6.comprarProduto(parfumLily, func1);
  cliente6.comprarProduto(verano, func1);
  cliente6.comprarProduto(verano, func1);

  cliente6.verResumo();

  //resumo de vendas revendedor:
  func1.verResumo();
  func2.verResumo();
}
