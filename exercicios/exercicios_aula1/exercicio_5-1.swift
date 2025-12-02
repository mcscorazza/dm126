// Exercicio 5.1 - Aula 1
// ----------------------------------------------------------------------------
// Crie uma função que receba um parâmetro que representa o nome de uma pessoa. 
// Esse parâmetro é um opcional, ou seja, ele pode conter um valor ou ser nulo.
// Faça o tratamento correto desse opcional:
// Caso seja nulo, exiba no console “Nome não especificado”;
// Caso contenha algum valor, exiba no console esse valor.
// ----------------------------------------------------------------------------

func checkName(name: String?) -> String {

  return name ?? "Nome não especificado"

}
print("\nSaídas:\n--------------------------------------------------")
print("Chamando com valor nulo:")
print(" >> " + checkName(name: nil))
print("Chamando com valor válido:")
print(" >> " + checkName(name: "Marcos Corazza"))
print("--------------------------------------------------\n")