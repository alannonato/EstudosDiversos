#include 'protheus.ch'
#include 'parmtype.ch'
/**
TIPOS DE DADOS 

NUMERICOS: 3 / 21.000 / 0.4 / 20000
LÓGICO: .T. / .F.
CARACTERE: "D" / 'C'
DATA: DATE()
ARRAY: {"VALO1", "VALOR2", "VALOR3"}
BLOCO DE CODIGO {||VALOR :=1 MSGALERT("VALOR É IGUAL A "+CVALTOCHAR(VALOR))}
**/


user function VARIAVEL()

Local nNum := 66
Local lLogic := .T.
Local cCarac := "String"
Local dData := DATE()
Local aArray := {"Joao", "Maria", "Jose"}
Local bBloco := {|| nValor := 2, MsgAlert("O numero é: " + cValToChar(nValor))}

Alert(nNum)
Alert(lLogic)
Alert(cValToChar(cCarac))
Alert(dData)
Alert(aArray[1])
Eval(bBloco)
	
return