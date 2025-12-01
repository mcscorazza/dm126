// Exercicio 3.2 - Aula 1
// ----------------------------------------------------------------------------
// Construa um algoritmo de adivinhação de números
// O seu trabalho é elaborar um algoritmo em que o usuário possa digitar 
// números no console até acertar o número inteiro aleatório valorInteiro, 
// de 1 a 100. A cada chute, o programa deve responder com “chutou alto”, 
// “chutou baixo” ou “acertou”. Após acertar, deve ser mostrado quantas 
// tentativas foram usadas para descobrir o número.
// ----------------------------------------------------------------------------

let valorInteiro = Int.random(in: 1...100)

var tentativas:Int = 0
var valorLido: Int = 0

repeat {
  print("Entre um valor entre 1 e 100: ", terminator:"")
  valorLido = Int(readLine()!)!
  tentativas += 1

  if valorLido > valorInteiro {
    print(" >> Chutou alto!")
  } else if valorLido < valorInteiro {
    print(" >> Chutou baixo!")
  }

} while valorLido != valorInteiro

print("------------------------------------------------------")
print(" !!! Acertou! Numero [\(valorInteiro)] em \(tentativas) tentativas !!!")
print("------------------------------------------------------\n")