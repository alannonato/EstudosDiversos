#include 'protheus.ch'
#include 'parmtype.ch'

user function BLOCO()
	//Local bBloco := {|| Alert("Ol� Mundo!")}
	//Eval(bBloco)
	
	//passagem por parametros - bloco de codigos
	
	Local bBloco := {|cMsg| Alert(cMsg)}
	
	Eval(bBloco, "Ol� Mundo")
return