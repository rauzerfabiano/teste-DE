/* Formate a variável “numero” para o seguinte formato: “(XX)_X_XXXX-XXXX”; */
var numero = "5(1)9-876-543-21";

function formatarNumero(num) {
    var apenasNumeros = num.replace(/\D/g, '');
    return `(${apenasNumeros.substr(0,2)})_${apenasNumeros[2]}_${apenasNumeros.substr(3,4)}-${apenasNumeros.substr(7)}`;
}

var numeroFormatado = formatarNumero(numero);
console.log(numeroFormatado);