// Exercicio 2.2 - Aula 1
// ----------------------------------------------------------------------------
// Crie um programa que valida a idade de uma pessoa e se ela possui ou não 
// um documento como comprovante.  O programa deve utilizar duas constantes 
// e ler os valores da entrada. 
// Caso a pessoa tenha mais de 18 anos e possua um documento válido, 
// o programa deve exibir “Acesso liberado”, do contrário, exibe “Acesso negado”.
// ----------------------------------------------------------------------------

print("Entre com a idade: ", terminator: "")
let idade: Int = Int(readLine()!)!

print("Possui documento? [s] ou [n]: ", terminator: "")
let temDoc: Bool = readLine() == "s" ? true : false

if idade >= 18 && temDoc {
  print("Acesso liberado")
} else {
  print("Acesso negado")
}

