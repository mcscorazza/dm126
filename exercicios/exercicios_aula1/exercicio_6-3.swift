// Exercicio 6.3 - Aula 1
// ----------------------------------------------------------------------------
// Use o ChatGPT para gerar um dicionário com duas letras que representam um
// Estado como chave e o nome inteiro do Estado como valor.
// Escreva uma função que exiba todos os estados cujo nome tenha mais de 7
// caracteres
// ----------------------------------------------------------------------------

let estadosBrasil: [String: String] = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo",
    "GO": "Goiás",
    "MA": "Maranhão",
    "MT": "Mato Grosso",
    "MS": "Mato Grosso do Sul",
    "MG": "Minas Gerais",
    "PA": "Pará",
    "PB": "Paraíba",
    "PR": "Paraná",
    "PE": "Pernambuco",
    "PI": "Piauí",
    "RJ": "Rio de Janeiro",
    "RN": "Rio Grande do Norte",
    "RS": "Rio Grande do Sul",
    "RO": "Rondônia",
    "RR": "Roraima",
    "SC": "Santa Catarina",
    "SP": "São Paulo",
    "SE": "Sergipe",
    "TO": "Tocantins"
]

func exibirEstados(estados:[String: String], tamanho: Int) -> [String] {
  var estadosRetorno:[String]=[]
  for (_, nome) in estados {
    if nome.count >= tamanho {
      estadosRetorno.append(nome)
    }
  }
  return estadosRetorno
}

let tamanho:Int = 7
let estadosBuscados = exibirEstados(estados: estadosBrasil, tamanho: tamanho)

print("\nSaídas:\n--------------------------------------------------")
print("Estados com mais de \(tamanho) letras:")
for estado in estadosBuscados {
  print(" > \(estado)")
}
print("--------------------------------------------------\n")