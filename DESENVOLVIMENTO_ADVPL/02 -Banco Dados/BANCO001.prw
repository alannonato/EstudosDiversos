#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO001()
	Local aArea := SB1->(GetArea())
	//Local cMsg := ""
	
	DbSelectArea("SB1")
	SB1->(DbSetOrder(1))//Posiciona no indice 1
	SB1->(DbGoTop())
	//Posiciona o produto de codigo 000002
	If SB1->(dbseek(FWXFilial("SB1") + "000002"))
	Alert(SB1->B1_DESC)
	EndIf
	
	RestArea(aArea)
return