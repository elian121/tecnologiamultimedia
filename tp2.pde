import ddf.minim.*;
Minim minim;
AudioPlayer musica;
int Y =500;
int velocidad = 5;
int X=465;
int espacio=0;
int pantalla;
float posY;
PImage img;
PImage imagen;
PImage imag ;
PImage  i;
PFont fuente;
void setup() {
  size(930, 500);
  minim = new Minim(this);
  musica = minim.loadFile("Action.mp3");
  img = loadImage("fondo.jpg");
imagen = loadImage("tubo1.png");
 imag  = loadImage("supermariobros.png");
 i     = loadImage("planta.png");
 fuente = loadFont("PalatinoLinotype-BoldItalic-28.vlw");
 textFont(fuente);
} 

void draw() {
 
  image(img,0,0,width - espacio, height - espacio);
  image(imagen,0,0,200,500);
  image(imagen,730,0,200,500);


if (pantalla==0){
  textAlign(CENTER);
  textSize(20);
  fill(250);
  image(imag,270,Y,400,300);

  Y=Y-velocidad;
  if (Y<-300) {
   Y= pantalla=1;
  }
  } else if (pantalla==1){
    textAlign(CENTER);
  textSize(27);
  fill(255);
  Y=Y-4;
  
  text("es un videojuego de arcade desarrollado por Nintendo en el año 1983. Fue creado por Shigeru Miyamoto. Ha sido presentado como un minijuego en la serie de Super Mario Advance y otros juegos. Mario Bros. ha sido relanzado para Wii, Nintendo 3DS y Wii U en los servicios de Consola Virtual en Japón, Norteamérica, Europa y Australia. Fue la tercera aparición de Mario, y la primera que aparece con su nombre definitivo, ya que en Donkey Kong (1981) aparecía bajo el seudónimo de Jumpman", 220,Y+500,500,500);
  image(i,450,Y+1000,50,150);
  if (Y<-1200) {
   Y= pantalla=2;
  }
  
  } else if (pantalla==2){
    textAlign(CENTER);
  textSize(27);
  fill(255);
  Y=Y-4;
  
  text("En el juego, Mario es retratado como un fontanero ítalo-estadounidense que, junto con su hermano menor Luigi, tiene que derrotar a las criaturas que han venido de las alcantarillas debajo de Nueva York. El juego se centra en la exterminación de ellos, volteándolos sobre sus espaldas y pateándolos. Las versiones originales de Mario Bros. -la versión de arcade y la versión de Family Computer/Nintendo Entertainment System (FC/NES)- fueron recibidas positivamente por los críticos.", 220,Y+500,500,500);
  image(i,450,Y+1000,50,150);
  if (Y<-1200)
   {
   Y=pantalla =3;
  }
    
  } else if (pantalla==3){
textAlign(CENTER);
  textSize(35);
  fill(255);
  Y=Y-4;
  
  text("Aunque este juego fue considerado como el primer juego en hacer debut el personaje de Luigi, en realidad apareció meses antes en el juego Mario Bros. de Game & Watch del mismo año.", 220,Y+500,500,500);
  image(i,450,Y+800,50,150);
  if (Y<-1000) {
   Y=pantalla =4;
  }
  }    else if (pantalla==4){
    textAlign(CENTER);
  textSize(50);
  fill(250);
  
  text("ELIAN PASSERO   LEGAJO:81693/8", 250, Y+400,420,500);
  image(i,400,Y+550,50,150);
  Y=Y-8;
  if (Y<-750) {
   Y=pantalla;
  }
}
}
