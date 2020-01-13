#include 'protheus.ch'
#include 'parmtype.ch'

Static cStat :=''
user function ESCOPO1()

//VARIAVEIS LOCAIS
Local nVar0 :=1
Local nVar1 :=20

//VARIAVEIS PRIVATE
Private cPri := 'private'

//VARIAVEIS PUBLIC

Public __cPublic := 'RCTI'

	TestEscop(@nVar0, @nVar1)
return
//----------------funão static ----------

Static Function TestEscop(nValor1, nValor2)

Local __cPublic := 'Alterei'
Default nValor1 := 0

//Alterando o conteudo da variavel 
nValor2 := 10

// mostrar conteudo da variavel private 
Alert("private: " + cPri)

//Alterar valor da variavel public 
Alert("Publica: " + __cPublic)

MsgAlert(nValor2)
Alert("Variavel Static: "+ cStat)


return
