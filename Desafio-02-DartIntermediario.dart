main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

Set setPessoas;
var infoPessoas;
var pessoasOrdenado = [];
var pessoasOrdenadoMaiores = [];
var pessoasOrdenadoMaiores18 =0;
var pessoasPorSexo = [];
var pessoaMaisVelha;
var idadePessoaMaisVelha = 0;
int quantidadeSexoMasculino=0;
int quantidadeSexoFeminino=0;
var nome;
var idade;
var sexo;


setPessoas = pessoas.toSet();
pessoas = setPessoas.toList();


for (var i=0; i < pessoas.length; i++){          
      infoPessoas = pessoas[i].split('|');
      nome = infoPessoas[0];
      idade = infoPessoas[1];
      sexo = infoPessoas[2];
      pessoasPorSexo.add(sexo + "|" + nome + "|" + idade);      
     }
pessoasPorSexo.sort();

for (var i=0; i < pessoasPorSexo.length; i++){
  //infoPessoas = pessoasPorSexo[i].split('|');
  pessoasOrdenado.add(pessoasPorSexo[i].split('|'));
  if(pessoasOrdenado[i][0]=="Masculino"){
    quantidadeSexoMasculino++;
  }else{
    quantidadeSexoFeminino++;
  }
  if(int.parse(pessoasOrdenado[i][2])>18){
    pessoasOrdenadoMaiores18++;
    pessoasOrdenadoMaiores.add(pessoasOrdenado[i]);    
  }
  if(idadePessoaMaisVelha<int.parse(pessoasOrdenado[i][2])){
    idadePessoaMaisVelha = int.parse(pessoasOrdenado[i][2]);
    pessoaMaisVelha = pessoasOrdenado[i][1];
  }    
  
}

print("A quantidade de pessoas do sexo Masculino é igual a $quantidadeSexoMasculino");
print("");
print("A quantidade de pessoas do sexo Masculino é igual a $quantidadeSexoFeminino");
print("");
print("A quantidade de pessoas maiores de 18 anos é: $pessoasOrdenadoMaiores18");
print("");
print("A lista de pessoas maiores de 18 anos é:");
print(pessoasOrdenadoMaiores);
print("");
print("A pessoa mais velha é: $pessoaMaisVelha. Ela tem $idadePessoaMaisVelha anos");

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos 
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.
  
}