void main(List<String> args) {
  List<dynamic> pacientes = ['Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];  


var infoPacientes;
int quantidade=0;
var nome;
var sobrenomeOrdenado = [];
var sobrenome = [];



for (var i=0; i < pacientes.length; i++){    
     infoPacientes = pacientes[i].split('|');
     if(int.parse(infoPacientes[1])>20){
       quantidade=quantidade+1;
     }     
}


print('A quantidade de pacientes acima de 20 anos é: $quantidade');

for (var i=0; i < pacientes.length; i++){    
      infoPacientes = pacientes[i].split('|');
      nome = infoPacientes[0].split(" ");      
      sobrenomeOrdenado.insert(i, nome[1] + ", " + nome[0]);
     }

    sobrenomeOrdenado.sort();

for (var i=0; i < pacientes.length; i++){
    nome = sobrenomeOrdenado[i].split(", ");
    sobrenome.insert(i, nome[0]);
    if(i==0) {      
      print("");
      print("Sobrenome " + sobrenome[i]+":");
    }else if(!(sobrenome[i]==sobrenome[i-1])){
      print("");
      print("Sobrenome " + sobrenome[i]+":");
      print(sobrenomeOrdenado[i]);
    }else{
      print(sobrenomeOrdenado[i]);
    };
       
    
    
    
}


}

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
