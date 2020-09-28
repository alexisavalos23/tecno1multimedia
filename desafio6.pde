Frase f;

void setup(){
 size( 800, 600);
 
 // llamo al constructor--
 f = new Frase( width/3.5, height/2, 48 );
 
}

void draw(){
  background( #9709AA );
  
  
f.dibujar();  

}

void mousePressed(){
f.mouse();

}

void keyPressed(){

//f.moverArr();
f.moverIzq();
//f.moverAba();
f.moverDer();
}
