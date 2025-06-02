def calcular_digito_verificador(cpf_parcial, peso_inicial):
    soma = 0
    peso = peso_inicial
    for caractere in cpf_parcial:
        if caractere.isdigit():
            soma += int(caractere) * peso
            peso -= 1
    resto = soma % 11
    return '0' if resto < 2 else str(11 - resto)

def validar_cpf(cpf):
    cpf = cpf.strip()
    
    # Remover formatação se existir
    cpf_numerico = ''.join([c for c in cpf if c.isdigit()])

    if len(cpf_numerico) != 11:
        print("CPF inválido! Deve conter 11 dígitos numéricos.")
        return

    pdv_real = cpf_numerico[9]
    sdv_real = cpf_numerico[10]

    print("PDV encontrado:", pdv_real)
    print("SDV encontrado:", sdv_real)

    # Calcular PDV
    pdv_calculado = calcular_digito_verificador(cpf_numerico[:9], 10)
    print("PDV Calculado conforme o CPF:", pdv_calculado)

    # Calcular SDV
    sdv_calculado = calcular_digito_verificador(cpf_numerico[:9] + pdv_calculado, 11)
    print("SDV Calculado conforme o CPF:", sdv_calculado)

    if pdv_calculado == pdv_real and sdv_calculado == sdv_real:
        print("CPF Válido!!!")
    else:
        print("CPF Inválido!!!")

# Programa principal
cpf_digitado = input("Digite seu CPF (com ou sem formatação): ")
validar_cpf(cpf_digitado)

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 63; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
