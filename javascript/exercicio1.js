/* Percorra o objeto clientes e mostre o nome da cada cliente da seguinte maneira:
“ultimoSobrenome, primeiroNome”; */

var clientes = [
    { 'id': 1, 'nome': 'Luis Santos Silveira', 'idade': 18 },
    { 'id': 2, 'nome': 'Ricardo Lopes Alves', 'idade': 30 },
    { 'id': 3, 'nome': 'Gustavo Silva Junior', 'idade': 26 }
];

clientes.forEach(cliente => {
    let nomes = cliente.nome.split(" ");
    let ultimoNome = nomes.pop();
    let primeiroNome = nomes.shift();
    console.log(`${ultimoNome} ${primeiroNome}`);
});
