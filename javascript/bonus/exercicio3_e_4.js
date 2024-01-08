async function a() {
  b();
  await c();
  await d();
  alertUser("a");
}
a();

function b() {
  return;
  alertUser("b");
}

function c() {
  return new Promise((resolve) => {
    resolve();
    alertUser("c");
  });
}

function d() {
  return new Promise((resolve) => {
    alertUser("d");
  });
}

function alertUser(message) {
  console.log("A função é: " + message);
}

/*Qual a ordem dos prints no console?
* A ordem dos prints no console seria:
*
* Primeiro, "A função é: d"
* Segundo, "A função é: a"
* Isso ocorre porque b() e c() são chamadas, mas ambas terminam sua execução antes de alcançar o alertUser. 
* A função d() é chamada e, como tem um alertUser antes de resolver a Promise, ela imprime no console. 
* Após a conclusão das funções assíncronas c() e d(), alertUser("a") é chamado.
*/

/* Existe algum erro nesse código? Se sim, comente sobre? 
* As funções b() e c() tem chamadas alertUser após um return ou resolve, que nunca serão alcançadas devido ao fim da execução da função antes dessas linhas.
* A função d() cria uma Promise, mas nunca a resolve, resultando em uma Promise pendente que nunca se completa. Isso pode ser problemático dependendo do contexto de uso da função.
*/
