#include 'protheus.ch'
#include 'parmtype.ch'

user function OPERADOR()
	
	Local nNum1 := 10
	Local nNum2 := 20
	
	Alert(nNum1 + nNum2)
	Alert(nNum2 - nNum1)
	Alert(nNum1 * nNum2)
	Alert(nNum2 / nNum1)
	Alert(nNum2 % nNum1)
	
	//OPERADORES RELACIONAIS
	Alert(nNum1 < nNum2)//COMPARACAO MENOR
	Alert(nNum2 > nNum1)//COMPARACAO MAIOR
	Alert(nNum1 = nNum2)//COMPARACAO IGUAL
	Alert(nNum2 == nNum1)//COMPARACAO EXATAMENTE IGUAL
	Alert(nNum2 <= nNum1)//COMPARACAO MENOR OU IGUAL
	Alert(nNum1 >= nNum2)//COMPARACAO MAIOR OU IGUAL
	Alert(nNum2 != nNum1)//COMPARACAO DE DIFERENCA
	
	//OPERADORES DE ATRIBUICAO
	nNum1 := 10
	nNum1 += nNum2
	nNum2 -= nNum1
	nNum1 *= nNum2
	nNum2 /= nNum1
	//nNum2 %= nNum1
	
return