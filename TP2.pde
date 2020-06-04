int pantalla;

int Y =-1;
int X=50;
void setup() {
  size (600, 600);
}

void draw() {

  if (pantalla==0) {
    background(200, 200, 100);
    fill(0);
    textSize(40);
    textAlign(CENTER);
    text("BIENVENIDO AL DESAFIO",300,120);
fill(255);
    rect(400, 500, 175, 70);
    fill(0);
    textSize(30);
    textAlign(CENTER);
    text("EMPEZAR",475,550);
    
    
    
    
  } else if (pantalla==1) {
    background(200, 100, 100);
    fill(255);
    rect(50, 150, 100, 300);
    fill(0);
    textSize(40);
    textAlign(CENTER);
    text("TE RETO AL TOCAR EL BOTON BLANCO",150,120,350,200);
  } 
  
  
  
  else if  (pantalla==2) {
    background(150, 255, 50);
    fill(255);
     rect(450, 150, 100, 300);
      fill(0);
    textSize(40);
    textAlign(CENTER);
    text("ESTAS ATREVIDO NO, ¡TE RETO DE NUEVO!",100,120,350,200);

  } 
  
  
  else if (pantalla ==3) {
     background(255, 80, 10);
     fill(255);
     rect(150, 450, 300, 50);
       fill(0);
    textSize(40);
    textAlign(CENTER);
    text("¡ASI! TOCALO DE NUEVO, MIRA QUE PASA",135,120,350,200);
  } 
  
  
  
  
  else if (pantalla==4) {
    background(200, 100, 100);
    fill(255);
    ellipse(random(600), random(600), 30, 30);
    rect(random(600),random(600),60,60);
    triangle(random(600),random(600),random(600),random(600),random(600),random(600));
    rect(100,450,100,100);
    
      fill(0);
    textSize(40);
    textAlign(CENTER);
    text("BIEN ROMPISTE EL JUEGO, AHORA TOCA EL BOTON BLANCO PARA QUE SE ARREGLE",120,50,350,400);
    
  }
   else if (pantalla==5) {
     textAlign(CENTER);
  textSize(50);
  background(0, 0, 0);
  fill(250);
  
  text("EL FiiiiiiiN      PASSERO ELIAN LEGAJO: 81693/8  MARINA NICOLAS LEGAJO 81899/2:", X, Y,500,500);
  Y=Y+1;
  if (Y>600) {
    Y=-1;
  }
  }
}

void mousePressed() {
  if (pantalla ==0 &&(mouseX>400 && mouseX<400+175 && mouseY>500 && mouseY<500+70)) {

    pantalla=1;
  } else if (pantalla ==1 &&(mouseX>50 && mouseX<50+100 && mouseY>150 && mouseY<150+300)) {

    pantalla=2;
  }  else if (pantalla ==2 &&(mouseX>450 && mouseX<450+100 && mouseY>150 && mouseY<150+300)) {

    pantalla=3;
  }   else if (pantalla ==3 &&(mouseX>150 && mouseX<150+300 && mouseY>450 && mouseY<450+50)) {

    pantalla=4;
  }    else if (pantalla ==4 &&(mouseX>100 && mouseX<150+100 && mouseY>450 && mouseY<450+100)) {

    pantalla=5;
  }
  
}
