String estado;
PFont fuente;

//ARRAY IMAGENES
int cantidad = 12;
PImage [] pantallas = new PImage [cantidad];
String [] filenames = {"1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg","11.jpg","12.jpg"};

//ARRAY TEXTOS
int numtext = 12;
String [] mistextos = new String[cantidad];

//ARRAY LUCIERNAGAS
int counter;
float[][] luces;
int numluces = 50;

//AUDIO
import ddf.minim.*;
Minim soundengine;
AudioSample sonido1;


void setup() {
  
  size(800, 600);
  estado = "comienzo";
   
//CARGA DE IMAGENES
 for(int i = 0; i < filenames.length; i++){
  pantallas[i]= loadImage(filenames[i]);
 }
 
 //CARGA TEXTOS
 for(int i = 0; i < numtext; i++){
mistextos[0] = "Nunca sabes con que seres te puedes \n   encontrar cuando te pierdes\n            en el bosque";
mistextos[1] = "Llegaste hasta este bosque tu misión es descubrir \n sus secretos. Deberás tomar diferentes decisiones \n para lograrlo.";
mistextos[2] ="El camino se divide al final del mismo. \n ¿Cuál tomas?.";
mistextos[3] ="Ves un brillo a la derecha. \n ¿Te acercas a ver o sigues?.";
mistextos[4] ="Descubriste una tribu..\n son Simbus, y protegen el bosque";
mistextos[5] ="Sigues hacia el final y escuchas unos cantos. \n Pero el camino es largo, debes continuar";
mistextos[6] ="No temas!.. es WENDIGO. \n El dios protector del bosque. ";
mistextos[7] ="El camino vuelve a dividirse. \n ¿Cuál eliges?" ;
mistextos[8] ="Ups camino cerrado, \n deberás comenzar de nuevo." ;
mistextos[9] ="Ya falta poco. \n Sigue.." ;
mistextos[10] ="Las ballenas nadan en el cielo. \n Las luciérnagas vuelan en el mar.." ;
mistextos[11] ="Tecno. M. 1." ;
 }

//AUDIO
 soundengine = new Minim(this);
 sonido1 = soundengine.loadSample("bosque.mp3", 1024);
  sonido1.trigger();
  
//CARGA LUCIERNAGAS
 counter = 0; 
  luces = new float[numluces][7]; 
  float sp = 0.25; 
  for(int i = 0; i < numluces; i++){
      luces[i][0] = random(3) + 3; //tamaño de las luciernagas
      luces[i][1] = random(width); //x pos
      luces[i][2] = random(height);  //y pos
      luces[i][3] = random(sp)-(sp/2);  // x velocidad
      luces[i][4] = random(sp)-(sp/2);  // y velocidad
      luces[i][5] = random(1);  //rate
      luces[i][6] = 0;  //alpha
      
  }
  
}




void draw() {
  //INICIO
if (estado.equals("comienzo")) { 
      imagenes(0);
      textSize(15);
      mistextos(0,250, 350);    
  }
  
if (estado.equals("parte1")) { 
    imagenes(1);
    mistextos(1, 50, 525);
    
  } else if (estado.equals("parte2")) { 
    imagenes(2);
    mistextos(2, 50, 525);
    
  } else if (estado.equals("parte3")) {
    imagenes(3);
    mistextos(3, 50, 525);
  }
  
  if (estado.equals("parte4")) {
    imagenes(4);
    mistextos(4, 50, 525);
  }
  if (estado.equals("parte5")) { 
    imagenes(5);
    mistextos(5, 50, 525);  
  }
  if (estado.equals("parte6")) { 
    imagenes(6);
    mistextos(6, 50, 525);
    
//LUCIERNAGAS EVENTO
     counter++;
for(int i = 0; i < numluces; i++){
    if(counter % 5 == 0){
      luces[i][3] += (random(0.1) - 0.05);
      luces[i][4] += (random(0.1) - 0.05);
    }
    
    luces[i][1] += luces[i][3];
    luces[i][2] += luces[i][4];
    
    if(luces[i][1] > width+20){
      luces[i][1] -= (width+40);
    }
    else if(luces[i][1] < -20){
      luces[i][1] += (width+40);
    }
    
    if(luces[i][2] > height+20){
      luces[i][2] -= (height+40);
    }
    else if(luces[i][2] < -20){
      luces[i][2] += (height+40);
    }    
    noStroke();
    int a = int(sin(luces[i][5]*0.05*counter)*255);
    if(a < 0){a = 0;}
    fill(42,255,255,a);
    ellipse(luces[i][1], luces[i][2], luces[i][0], luces[i][0]);
  }
      
    
  }  if (estado.equals("parte7")) { 
    imagenes(7);
    mistextos(7, 50, 525);
  }
  if (estado.equals("parte8")) { 
    imagenes(8);
    mistextos(8, 50, 525);
  }
  if (estado.equals("parte9")) { 
    imagenes(9);
    mistextos(9, 50, 525);
  }
  if (estado.equals("parte10")) { 
    imagenes(10);
    mistextos(10, 50, 525);
//LUCIERNAGAS EVENTO
counter++;     
for(int i = 0; i < numluces; i++){
    colorMode(HSB);
    if(counter % 5 == 0){
      luces[i][3] += (random(0.1) - 0.05);
      luces[i][4] += (random(0.1) - 0.05);
    } 
    luces[i][1] += luces[i][3];
    luces[i][2] += luces[i][4]; 
    if(luces[i][1] > width+20){
      luces[i][1] -= (width+40);
    }
    else if(luces[i][1] < -20){
      luces[i][1] += (width+40);
    }  
    if(luces[i][2] > height+20){
      luces[i][2] -= (height+40);
    }
    else if(luces[i][2] < -20){
      luces[i][2] += (height+40);
    }    
    noStroke();
    int a = int(sin(luces[i][5]*0.05*counter)*255);
    if(a < 0){a = 0;}
    fill(42,255,255,a);
    ellipse(luces[i][1], luces[i][2], luces[i][0], luces[i][0]);
  }
    
    
    
  }
  if (estado.equals("final")) { 
    imagenes(11);
    textSize(25);
    mistextos(11, 330, 405);
  }
  println(estado);
}

void mousePressed() {
//BOTÓN CENTRO
  if (mouseX>255 && mouseX<525 && mouseY>480 && mouseY< 555) {  
    if (estado.equals("comienzo")) {
      estado = "parte1";
    } else if (estado.equals("final")) {
      estado = "comienzo";
    }
  }
  
//BOTÓN SOLO
  if (mouseX>600 && mouseX<750 && mouseY>480 && mouseY< 555) { 
    if (estado.equals("parte1")) {
      estado = "parte2";
    } else if (estado.equals("parte4")) {
      estado = "final";
    } else  if (estado.equals("parte5")) {
      estado = "parte6";
    } else if (estado.equals("parte6")) {
      estado = "final";
    } else if (estado.equals("parte8")) {
      estado = "final";
    } else  if (estado.equals("parte9")) {
      estado = "parte10";
    } else if (estado.equals("parte10")) {
      estado = "final";
    }
    else if (estado.equals("parte2")) {
      estado = "parte7";
    }
    else if (estado.equals("parte7")) {
      estado = "parte9";
    }
  }

//boton dos caminos pantalla 2 y pantalla 7
  //pantalla2 derecha 
  if (mouseX>490 && mouseX<610 && mouseY>470 && mouseY< 550) {
    if (estado.equals("parte2")) {
      estado = "parte3";
    } else if (mouseX>490 && mouseX<610 && mouseY>470 && mouseY< 550) { 
      if (estado.equals("parte3")) {
        estado = "parte4";
      }
    }
  }
  if (mouseX>630 && mouseX<780 && mouseY>470 && mouseY< 550) { 
    if (estado.equals("parte3")) {
      estado = "parte5";
    }
  }
  
 //pantalla 2 izq
  if (mouseX>490 && mouseX<610 && mouseY>470 && mouseY< 550) {
    if (estado.equals("parte2")) {
      estado = "parte7";
    }  else if (mouseX>490 && mouseX<610 && mouseY>470 && mouseY< 550) { 
      if (estado.equals("parte7")) {
        estado = "parte8";
      }
    }
  }
  if (mouseX>490 && mouseX<610 && mouseY>470 && mouseY< 550) { 
    if (estado.equals("parte7")) {
      estado = "parte9";
    }
  }
  
}
