#include 'protheus.ch'
#include 'parmtype.ch'
//PROGRAMA DE ATUALIZA��O
user function MODELO1()
	
	Local cAlias := "SB1"
	Local cTitulo := "Cadastro - AXCadastro"
	Local cVldExc := " .T. "
	Local cVlDalt := " .T. "
	
	AxCadastro(cAlias, cTitulo, cVldExc, cVlDalt)
	
return Nil