#include 'protheus.ch'
#include 'parmtype.ch'

user function AVETOR()
	
	
	Local dData := Date()
	Local aValores := {"João", dData, 100}
	
	
	Alert(aValores[2]) //Exibe a posicao 2 do array
	Alert(aValores[3])
	
	
return