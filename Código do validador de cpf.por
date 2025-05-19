programa
{
inclua biblioteca Tipos
inclua biblioteca Texto

funcao inicio()
{

   cadeia cpf
   caracter caractere_atual,sub
   inteiro caractere_atual_inteiro,contador = 10,acumulador = 0,sub2
   escreva("Digite seu cpf: ")
   leia(cpf)
   limpa()
	se(Tipos.cadeia_e_inteiro(cpf, 10) == verdadeiro e Texto.numero_caracteres(cpf) == 11)
	{
     	escreva(cpf,"\n","Digito verificador encontrado: ",Texto.obter_caracter(cpf,9),"\n")
     		para(inteiro i=0; i < 9; i++)
     		{
     			
		          caractere_atual = Texto.obter_caracter(cpf, i) 
		          caractere_atual_inteiro = Tipos.caracter_para_inteiro(caractere_atual)
		          caractere_atual_inteiro = caractere_atual_inteiro * contador
		          acumulador = acumulador + caractere_atual_inteiro
		          contador-- 
               }
       
               se(acumulador % 11 < 2)
               {
                 escreva("PDV Calculado conforme o cpf: 0")
               }
               
      	     senao se(acumulador % 11 >= 2)
      		{
		      sub2 = 11 - acumulador % 11
		      escreva("PDV Calculado conforme o cpf: ",sub2)
       		}
       
    }
    senao se(Tipos.cadeia_e_inteiro(cpf, 10) == falso e Texto.numero_caracteres(cpf) == 14)
    {
              se(Texto.obter_caracter(cpf, 11) == '-' e Texto.obter_caracter(cpf, 3) == '.' e Texto.obter_caracter(cpf, 7) == '.')
              {
              escreva(cpf,"\n","Digito verificador encontrado: ",Texto.obter_caracter(cpf,12))
                 para(inteiro i=0; i < 11; i++)
                 {
                    caractere_atual = Texto.obter_caracter(cpf, i )
                    se(Tipos.caracter_e_inteiro(caractere_atual) == verdadeiro)
                    {
		             caractere_atual = Texto.obter_caracter(cpf, i) 
		             caractere_atual_inteiro = Tipos.caracter_para_inteiro(caractere_atual)
		             caractere_atual_inteiro = caractere_atual_inteiro * contador
		             acumulador = acumulador + caractere_atual_inteiro
		             contador--
                    }
		       }
			  se(acumulador % 11 < 2)
		       {
		       escreva("\nPDV Calculado conforme o cpf: 0")
		       }
		       senao se(acumulador % 11 >= 2)
		       {
		       sub2 = 11 - acumulador % 11
		       
		       escreva("\nPDV Calculado conforme o cpf: ",sub2)
		       }
             }
             
             
    }
           

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
