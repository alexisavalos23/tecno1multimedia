
class Vincent{

  // CAMPOS (variables - propiedes)
  PImage V;
  float posX, posY, tam;
  String estado;
  //PFont fuente;
  
  // CONSTRUCTOR > metodo/funcion inicial (el "setup" del objeto)
  Vincent( float pX, float pY, float t ){
  // inicializar posicion
  posX = pX;
  posY = pY;
  tam = t;
  V = loadImage( "vincpj.png" );
  
  }

  // METODOS (funciones - acciones)
 
  void dibuVins(){
  // muestro los sprites de mi personaje
  image( V, posX, posY, tam, tam );
  
  }
  
  // METODOS para KeyPressed()
   void moverIzqDer() {
    //evito que pase borde izquierdo
    if( posX > 341 ){  
      if ( keyCode == LEFT )
        posX -= 45;
    }
    //evito que pase borde derecho
    if( posX < 550 ){  
      if ( keyCode == RIGHT )
        posX += 45;
    }
   }
  void moverArrb(){
   //--mueve al personaje hacia arriba con la flecha correspondiente
  if( keyCode == UP )
  posY -= 45;
  
  }
  
  void moverAbaj(){
    //--mueve al personaje hacia abajo con la flecha correspondiente
   if( posY < 450 )
    if( keyCode == DOWN )
   posY += 45;
  }
  
  //COLISIONES
  boolean perderB( Bloque[] blo ){
    boolean hayColision = false;
    for( int i = 0; i < blo.length; i++ ){
      float d = dist( posX, posY, blo[i].posX, blo[i].posY );
      
      if( d < ( tam/4 + blo[i].tam/2.2 ) ){
      blo[i].reciclar(); 
      hayColision = true;
      }
    }
   return hayColision;
  }
  
  boolean perderC( Carnero[] car ){
    boolean hayColision = false;
    for( int j = 0; j < car.length; j++ ){
     float d = dist( posX, posY, car[j].posX, car[j].posY );
     
     if( d < ( tam/4 + car[j].tam/2.2 ) ){
     car[j].reciclar();
     hayColision = true;
     }
    }
    return hayColision;
   }
   
 void resetearVin(){
   posX = 450;
   posY = 480;
 
 }
}
