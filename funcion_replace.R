# Funcion para reemplazar las variables categoricas en un vector de enteros
# Mediante el uso replace(),
# donde 0:AGREGO, 1:EDITO, 2:ELIMINO ... n:ACEPTO

# Vector de variables categoricas donde 0:AGREGO, 1:EDITO, .... n:ACEPTO
action_char <- c("AGREGO", "EDITO", "ELIMINO", "DESACTIVO", "ACTIVO", "POSTULO", "DESCARTO", "PRESELECCIONO","AGREGO_NUEVAMENTE", "ENVIO", "PASO", "CREO", "CONTRATO", 
                 "ACTUALIZO", "DESVINCULO", "VALIDO", "APROBO", "RECHAZO", "ASIGNO", "RESPONDIO", "EXPORTO", "MODIFICO", "ADICIONO", "DESCONTO", "PROGRAMO", "MARCO", "ACORDO", 
                 "IMPORTO", "SALTO", "DESBLOQUEO", "CANCELO", "MARCO_COMO_CUMPLIDO", "MARCO_COMO_NO_CUMPLIDO", "SUBIO", "SELECCIONO", "RECIBIO", "REABRIO", "ESTABLECIO", 
                 "INSCRIBIO", "DECLINO", "SOLICITO","ACEPTO")

#Vector para probar la funcion
prueba <- c(1,2,3,4,5)

# Funcion para action que sustituye cada factor (variable categorica)
reemplazar_action <- function(action_g, action_l){
  for (i in 1:length(action_l)) {
    action_g <- replace(action_g, action_g==i-1, action_l[i])
  }
  print(action_g)
}

# Sustitucion de los actions de numeros a char (variable categorica)
prueba <- c(reemplazar(prueba, action_char))

