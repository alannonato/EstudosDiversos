#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO005()
	
	Local aArea := GetArea()
	Local aDados := {}
	Private lMSErroAuto := .F. //sempre inciar com .F.
	
	
	
	aDados := {;
	{"B1_COD", "111111", Nil},;
	{"B1_DES", "PRODUTO TESTE", Nil},;
	{"B1_TIPO", "GG", Nil},;
	{"B1_UM", "PC", Nil},;
	{"B1_LOCPAD", "01", Nil},; 
	{"B1_PICM", 0, Nil},;
	{"B1_IPI", 0, Nil},;
	{"B1_CONTRAT", "N", Nil},;
	{"B1_LOCALIZ", "N", Nil};
	}
	
	//Inicio do controle de transação
	
	Begin Transaction 
	   //Chama cadastro de produto
	   
	   MSExecAuto({|x,y|Mata010(),aDados,3})
	   
	   //Caso ocorra algum erro.
	   
	   If lMSErroAuto
	   Alert("Ocorreram erros durante a operação!")
	   MostraErro()
	   
	   DisarmTransaction()
	   
	   Else
	      MsgInfo("Operação Finalizada", "Aviso")
	   
	   EndIf
	
	End Transaction
	
	RestArea(aArea)
	
	
return