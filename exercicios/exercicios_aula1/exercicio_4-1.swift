// Exercicio 4.1 - Aula 1
// ----------------------------------------------------------------------------
// Escreva uma função que receba um parâmetro do tipo Int e verifique se esse 
// número é primo ou não. O retorno dessa função pode ser um booleano, 
// representando true se for primo ou false se não for primo.
// ----------------------------------------------------------------------------

func ehPrimo(num: Int) -> Bool {
  if num < 2 { return false }
  for n in 2..<num {
    if (num%n == 0) { return false }
  }
  return true
}

var numero: Int;
repeat {
  print("Digite um número inteiro [digite '0' para sair!] : ", terminator:"")
  numero = Int(readLine()!)!
  if numero != 0 {
    if (ehPrimo(num: numero)) {
      print(" >> [SIM] O número \(numero) é primo")
    } else {
      print(" >> [NÃO] O número \(numero) não é primo")
    }
  }
} while numero != 0