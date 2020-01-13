#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO004()
	
	Local aArea := SB1->(GetArea())
	
	DbSelectArea('SB1')
	SB1->(DbSetOrder(1))
	SB1->(DbGoTop())
	
	// Iniciar a transação.
	
	Begin Transaction
	
	MsgInfo("A Descrição do produto será alterada", "Atenção")
	
	If SB1->(DbSeek(FWxFilial('SB1') + '000002'))
	
	RecLock('SB1', .F.) //Para travar o registro para alteração, caso .T. ele trava para incluir
	Replace B1_DESC With "MONITOR DELL 42 PL"
	SB1->(MsUnlock())//Destrava a tabela SB1.
	
	EndIf
	
	MsgAlert("Alteração efetuada!", "Atenção")
	DisarmTransaction()//Cancela toda transação.
	
	End Transaction
	RestArea(aArea)
return