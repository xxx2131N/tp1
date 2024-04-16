void setup() {
    size(600, 600); // Tamaño del lienzo

    // Configura los valores iniciales para las variables necesarias
    float distanciaEntreCirculos = 50; // Distancia entre círculos en una fila
    float radioCirculo = 20; // Radio de los círculos
    float y = distanciaEntreCirculos; // Posición y inicial, comienza desde la primera fila (índice 1)

    // Estructura de control repetitiva do-while
    do {
        // Solo dibuja círculos en líneas impares (y es divisible entre distanciaEntreCirculos)
        if ((y / distanciaEntreCirculos) % 2 == 1) {
            // Comienza desde la posición x inicial (0)
            float x = distanciaEntreCirculos / 2; // Desplaza x para que los círculos estén centrados entre cada par de filas

            // Dibuja círculos a lo largo de la línea actual
            while (x < width) {
                // Genera un color aleatorio para el círculo
                fill(random(255), random(255), random(255));

                // Dibuja el círculo en la posición actual (x, y)
                ellipse(x, y, radioCirculo * 2, radioCirculo * 2);

                // Avanza a la siguiente posición x
                x += distanciaEntreCirculos;
            }

            // Dibuja la línea azul horizontal justo debajo de los círculos
            stroke(0, 0, 255); // Color azul para la línea
            line(0, y + radioCirculo, width, y + radioCirculo); // Línea azul justo debajo de los círculos
        }

        // Avanza a la siguiente línea
        y += distanciaEntreCirculos;
    } while (y < height); // Repite hasta que se alcance el final del lienzo
}
