echo "Obtener perros de raza Husky:" && grep "Husky" perritos.csv

echo "Obtener nombre y edad de TODOS los perros:" && awk -F ',' '{print $1, $2}' perritos.csv

echo "Reemplazar la palabra raza por Breed:" && sed -i 's/Raza/Breed/g' perritos.csv

echo "Combinacion para obtener todos los perros Husky y mostrar solo su nombre y edad en formato de lista:" && grep "Husky" perritos.csv | awk -F ',' '{print "- " $1 ", " $2 " años"}'

echo "Obtener perros de 5 años a 7 años, mostrar solo su nombre y edad y guardar el resultado en un archivo de texto:" && grep "^[^,]*,[5-7]\+" perritos.csv | awk -F ',' '{print $1 ", " $2 " años"}' > perros_viejos.txt