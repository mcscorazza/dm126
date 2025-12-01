// Exercicio 1.3 - Aula 1
// ----------------------------------------------------------------------------
// Desenvolva um código que leia a largura, altura e profundidade de um livro.
// Calcule seu volume e exiba na saída se ele é ou não maior que 1000.
// Por fim, exiba o tipo da variável que armazenou o volume final.
// (Dica: não é necessário estrutura de decisão).
// ----------------------------------------------------------------------------

print("\nEntradas:\n---------------------------------------------")
print("Digite o valor da altura [cm]: ", terminator: "")
var altura = Double(readLine()!)!
print("Digite o valor da largura [cm]: ", terminator: "")
var largura = Double(readLine()!)!
print("Digite o valor da profundidade [cm]: ", terminator: "")
var profundidade = Double(readLine()!)!
print("--------------------------------------------")

var volume = altura * largura * profundidade
print("\nSaídas:\n---------------------------------------------")
print("O volume do livro é de: \(volume) cm³")
print("O volume é maior que 1000 cm³? : \(volume>1000)")
print("O tipo da variavel 'volume' é: \(type(of:volume))")
print("--------------------------------------------\n")
