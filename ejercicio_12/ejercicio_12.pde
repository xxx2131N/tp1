String texto_consola="escribe tu nombre:";
String nombre="";
String mensaje_saludo="";

void setup() {
size(400,200);
println(texto_consola);
}

void draw() {
background(#000000);
text(mensaje_saludo, 50, 100);
textSize(29);
}

void keyPressed() {
nombre += key;
println(nombre);
  
if (key == '\n') {
mensaje_saludo="Hola,"+nombre+"Bienvenido >:)";
println(mensaje_saludo);
}
}
