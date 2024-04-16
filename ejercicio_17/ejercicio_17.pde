PVector posLink;
PVector posTesoro;
PImage imagenLink;
PImage imagenTesoro;

public void setup(){
  size(500,500);
  posLink = new PVector (100,100);
  posTesoro = new PVector(width/2,height/2);
  imagenLink= loadImage("Link.png");
  imagenTesoro= loadImage("Tesoro.png");
}

public void draw(){
  background(0);
  dibujarLink();
  posLink.x = mouseX;
  posLink.y = mouseY;
  validarDibujarTesoro();
}

public void dibujarLink(){
  imageMode(CENTER);
  image(imagenLink, posLink.x, posLink.y, 80, 80);
  //circle(posLink.x,posLink.y,40);
}

public void dibujarTesoro(){
  //rectMode(CENTER);
  //rect(posTesoro.x,posTesoro.y,100,70);
  image(imagenTesoro, posTesoro.x, posTesoro.y,80, 80);
}

public float obtenerdistancia(){
  float distancia=0;
  float cateto1=posTesoro.x-posLink.x;
  float cateto2= posTesoro.y-posLink.y;
  distancia= sqrt(pow(cateto1, 2) + pow(cateto2, 2));
  return distancia;
}

public void validarDibujarTesoro(){
  if(obtenerdistancia()<100){
    println("Debe desaparecer el tesoro");
  }else{
    dibujarTesoro();
    strokeWeight(10);
     stroke(#FFD603);
  line(posLink.x, posLink.y,posTesoro.x,posTesoro.y);
  }
}
