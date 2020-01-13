#include 'protheus.ch'
#include 'parmtype.ch'

user function ESTRREP()
	
	/*
	Local nCount
	Local nNum := 0
	
	For nCount := 0 To 10 Step 2
	
	nNum += nCount
	
	Next
	Alert("Valor: " +cValToChar(nNum))
	*/
	
	//EXEMPLO DO COMANDO WHILE ENDDO
	Local nNum1 := 0
	Local cNome := "RCTI"
	
	While nNum1 != 10 .AND. cNome !=  "PROTHEUS"
	
	nNum1++ 
	
	If nNum1 == 5 
	cNome := "PROTHEUS"
	
	EndIf
	
	EndDO
	
	Alert("Numero: " + cValToChar(nNum1))
	Alert("Nome: " + cValToChar(cNome))
	
return