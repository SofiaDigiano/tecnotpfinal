
//funcion imagenes
void imagenes(int i){
  image(pantallas[i],0,0);
}

//funcion textos
void mistextos(int i, int x, int y){
 text(mistextos[i],x,y);
   fuente = loadFont( "Gungsuh-48.vlw" );
    textFont(fuente);
 textSize(15);
}
