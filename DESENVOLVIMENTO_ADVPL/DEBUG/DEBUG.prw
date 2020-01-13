#include 'protheus.ch'
#include 'parmtype.ch'
//Ctrl + Alt + D
/*/{Protheus.doc} DEBUG
//TODO Descrição auto-gerada.
@author alan.paixao
@since 12/01/2020
@version 1.0


@type function
/*/
user function DEBUG()
	
	Local aArea := GetArea()
	Local aProduto := {}
	Local nCount := 0
	
	//Seleciona a tabela da produtos
	DbSelectArea("SB1")
	SB1->(DbSetOrder(1))//Seleciona o indice
	SB1->(DbGoTop())
	
	While ! SB1->(EoF())//Enquanto não for final do arquivo
	  aAdd(aProduto,{ SB1->B1_COD,;
	                  SB1->B1_DESC})
	                  
	 nCount++
	 SB1->(DbSkip())
	 EndDo
	 
	 MsgAlert("Quantidade de produtos encontrados: <b>" + cValToChar(nCount))
	 
	 nCount := 0 //Zerando o valor da variável nCount
	 
	 RestArea(aArea)                 
	
return