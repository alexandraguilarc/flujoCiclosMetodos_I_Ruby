puts "***Bienvenido al juego piedra, papel o tijera***"
#Condiciones del juego
puts "Para jugar deberás escoger una opción en número, donde piedra = 0 -- papel = 1 y piedra = 2, el sistema no admite ningún otro valor."

#Jugador contra la computadora elige una opción
puts " Elige tu jugada: "
jugador = gets.chomp

#condición para iniciar la jugada
if jugador == "0" || jugador == "1" || jugador == "2"
    puts"Tu jugada ha sido #{jugador}"  
else
    puts"Argumento invalido: Debe ser 0, 1 o 2."
end

#computador elige una opción
computador = rand(3).to_s #se obtiene un número entero entre 0 y 2 (ambos incluidos).
puts "Computador juega #{computador}"

#condición para establecer el ganador de la jugada
if jugador == computador
    puts "Empataste."
elsif (jugador == "0" && computador == "2") || (jugador == "1" && computador == "0") || (jugador == "2" && computador == "1")
    puts "Ganaste."
else
    puts "Perdiste."
end
