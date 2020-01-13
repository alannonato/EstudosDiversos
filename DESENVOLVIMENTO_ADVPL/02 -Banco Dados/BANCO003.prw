#include 'protheus.ch'
#include 'parmtype.ch'
#include 'TopConn.ch'

user function BANCO003()
	Local aArea := SB1->(GetArea())
	Local  cQuery  := ""
	Local aDados := {}
	
	cQuery := " SELECT "
	cQuery += " B1_COD AS CODIGO, "
	cQuey += " B1_DESC AS DESCRICAO "
	cQuery += " FROM "
	cQuery += " "+ RetSQLName("SB1") + "SB1"
	cQuery += " WHERE"
	cQuery += " B1_MSBLQL != '1' " 
	
	//Executando a consulta acima
	
	TCQuery cQuery new Alias "TMP"
	
	while ! TMP->(EoF())
	AADD(aDados, TMP->CODIGO)
	AADD(aDados, TMP->DESCRICAO)
	TMP->(DbSkip())
	EndDo
	
	Alert(Len(aDados))
	
	For nCount := 1 To Len(aDados)
	MsgInfo(aDados[nCount])
	Next nCount
	
	TMP->(DbCloseArea())
	RestArea(aArea)
return