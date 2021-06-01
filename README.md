# Contador-de-monedas
Proyecto de Visión artificial.
Este repositorio contiene el Código de MatLab que permite realizar el onteo de monedas colombianas considerando su area.

El código funciona de la siguiente manera:
1. Cargar la imagen y se lee con el comando.
2. Convertir a escala de grises.
3. Eliminar el ruido y umbralizar automáticamente.
4. A través de la función strel estructurar la detección de elementos como discos.
5. Se dilata, con imdilate, la imagen umbralizada con la estructura del disco (forma morfológica de la moneda).
6. Rellenar los espacios vacíos en algunos discos con la función imfill.
7. Determinar las variables de área y centroide para cada tipo de moneda
8. Obtener el número de círculos y determinar los valores de sus áreas.
9. Detectar valor de la moneda y con un ciclo for realizar el conteo de valores captados en la imagen.
10. Hacer el conteo total y mostrar el valor.

