class Frase{

  // variables--
String t = "TECNO1 2020";
float posX, posY, tam;


// constructor--
Frase( float a, float b, float c){

  posX = a;
  posY = b;
  tam = c;

  
  
} 

// funciones--  
void dibujar(){
  
  pushStyle();
  fill( #40F011 );
  textSize(tam);
  text( t, posX, posY, tam );
  popStyle();
}

void mouse(){
posY = mouseY;
}
//void moverArr(){
////if( keyCode == UP )
////posX -= tam;
////}
void moverIzq(){
if( keyCode == LEFT )
posX -= tam;
}
//void moverAba(){
//if( keyCode == DOWN )
//posX -= tam;
//}
void moverDer(){
if( keyCode == RIGHT )
posX += tam;
}


}
