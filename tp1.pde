PFont fuente;
PImage godofwar;
int pantalla = 1;
int pantallax = 600;
int pantallay = 500;
PImage boton;


void setup(){
  size(600,500);
  fuente = createFont("GODOFWAR.TTF",30);
  textFont(fuente);
  textAlign(CENTER);
  godofwar = loadImage("godofwar.jpg");
  image(godofwar,0,0,pantallax,pantallay);
  boton = loadImage("circulo.png");
};

void draw(){
  image(godofwar,0,0,pantallax,500);
  image(boton,30,400,70,70);
  if (pantalla == 1){
    fill(0);
    text("GOD OF WAR",pantallax/2,80);
  
  }
  if (pantalla == 2){
    text("personajes principales",200,pantallay);
    pantallay = pantallay-1;
    text("kratos",200,pantallay+50);
    text("athenea",200,pantallay+100);
    text("zeus",200,pantallay+150);
    text("hades",200,pantallay+200);
    text("ares",200,pantallay+250);
    text("poseidon",200,pantallay+300);
  }
  if (pantalla == 3){
  text("personajes secundarios",400,pantallay);
  pantallay = pantallay-1;
  text("cava tumbas",400,pantallay+50);
  }
  if (pantalla == 4){
    text("musicalizacion",130,pantallay);
    pantallay = pantallay-1;
  }
  if (pantalla == 5){
    text("direccion",400,pantallay);
    pantallay = pantallay-1;
  }
  if (pantalla == 6){
   text("!eres un god of war¡",300,pantallay);
 }
};

void mousePressed(){
  float distancia = dist(mouseX,mouseY,65,435);
  int radio = 70/2;
  if (distancia < radio){
    pantalla ++;
    pantallay = 500;
    if (pantalla == 7){
      pantalla = 1;
    }
  }
}

void mouseMoved(){
  float ran = random (255);
  fill(mouseX,mouseY,ran);
}
