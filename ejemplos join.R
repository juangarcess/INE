### Codigo Ejemplo uso de funciones JOiN



library(dplyr)
library(readxl)



### Ejemplo inner Join


### Sea la siguiente tabla  con información comunal del Censo 2017 que está en un archivo Excel en un repositorio de github

url <- "https://github.com/juangarcess/INE/raw/Trabajo-con-Join/indice%20de%20dependencia%20comuna.xlsx"
destfile <- "indice_20de_20dependencia_20comuna.xlsx"
curl::curl_download(url, destfile)
indice_de_dependencia_comuna <- read_excel(destfile)

indice_de_dependencia_comuna 


### Leemos tambien la informacion de la DPA actual

url <- "https://github.com/juangarcess/INE/raw/Trabajo-con-Join/cut%20dpa.xlsx"
destfile <- "cut_20dpa.xlsx"
curl::curl_download(url, destfile)
cut_dpa <- read_excel(destfile)



### La tabla tabla indice de dependencia  tiene solo el codigo de comuna. 
###Supongamos que queremos  agregar  una colunma con el nombre de comuna a dicha tabla .
### Para eso, podemos usar la funcion inner join, lo que hace es crear una tabla nueva con la "interseccion" de dos tablas que tienen una columna con valores comunes.


nueva_tabla<-inner_join(indice_de_dependencia_comuna , cut_dpa, by="COMUNA")

##entonces, lo que hace es crear una tabla nueva con solo los casos que que tienen valores comunes en la variable "COMUNA"
nueva_tabla


mes_actual<-2


### Left Join 
### left

