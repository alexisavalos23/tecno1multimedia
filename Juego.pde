class Juego {
  // PROPIEDADES (variables)
  PImage fondo, trofeo;
  PFont fuente;
  String estado; //estados del juego = menu, jugar, ganar, perder
  
  Vincent personaje; //Vincent personaje;
  
  int b = 3;
  int c = 3;
  //int d = 1;
  Bloque[] block = new Bloque[b]; // Arreglo de bloque(s)
  Carnero[] sheep = new Carnero[c];// Arreglo de carnero(s)


  // CONSTRUCTOR (setup del objeto)
  Juego(){
   
  //cargo img fondo y fuente
  fondo = loadImage( "fondo.jpg" );
  trofeo = loadImage( "Trofeo.png" );
  fuente = createFont( "Catherine.otf", 200 );
  estado = "menu";
  // inicializar los objetos: personaje, carnero(s), bloque(s)
  personaje = new Vincent( width/2.3, height/1.3, width/10 ); //tam: 150
  
  for( int i = 0; i < b; i++ ){
   block[i] = new Bloque( -50 );
  }
  for( int j= 0; j < c; j++ ){
   sheep[j] = new Carnero( -50, j );
  }
}

  // METODOS (funciones) 
  
  void actualizar(){
    
    if( estado.equals( "menu" ) ){
    fill( 245, 17, 112 );
    rect( 393, 375, 200, 65 );
    textFont(fuente, 80);
    text( "The Vincent's Nightmare", width/5.7, height/2.5 );
    fill( 255 );
    textFont(fuente, 60);
    text( "Jugar", width/2.3, height/1.4 );
    textSize( 40 );
    text( "Tenés 5 segundos para ganar", width/3.2, height/1.1 );
    }
    else if( estado.equals( "jugar" ) ){
    image( fondo, 0, 0, width, height );
    for( int i = 0; i < b; i++ ){
     block[i].actualizar();
    }
  for( int j = 0; j < c; j++ ){
     sheep[j].actualizar();
    }
    if( personaje.perderB( block ) ){
      estado = "perdiste";
     }
    if( personaje.perderC( sheep ) ){
      estado = "perdiste";
      }
      if( personaje.posY <= 0 ){
   estado = "ganaste";

    }
    time.mostrarTiempo( TposX, TposY );
    if( time.tiempoActual()%60 >= 6 ){
    estado = "perdiste";
    time.resetear();
  }
    
  }
   else if( estado.equals( "perdiste" ) ){
    fill( 245, 17, 112 );
    rect( 393, 497, 200, 65 );
    fill( 255 );
    textFont(fuente, 60);
    text( "Salir", width/2.3, height/1.09 );
    textFont( fuente, 80 );
    fill( 245, 17, 112 );
    text( "Game Over", width/2.7, height/2 );
    }
    else if( estado.equals( "ganaste" ) ){
    image( trofeo, 450, 70, 120, 150  );
    fill( 245, 17, 112 );
    rect( 393, 497, 200, 65 );
    fill( 255 );
    textFont(fuente, 60);
    text( "Salir", width/2.3, height/1.09 );
    textFont( fuente, 80 );
    text( "Congratulation!", width/3.3, height/1.7 );
   
    }
   }
  
   void dibujar(){
     
     if( estado.equals( "jugar" ) ){
     personaje.dibuVins();
     for( int i = 0; i < b; i++ ){
     block[i].dibujar();
     }
  for( int j = 0; j < c; j++ ){
     sheep[j].dibujar();
    
      }
     }
   }
  //void resetear(){
    
  //sheep[j].reciclar();
  // bloque[i].reciclar();
 // }
  void teclas(){
  personaje.moverIzqDer();
  personaje.moverArrb();
  personaje.moverAbaj();
  }
  
  void boton(){
    
  if( estado.equals( "menu" ) ){
    if( mouseX > 393 && mouseX < 393+200 && mouseY > 375 && mouseY < 375+65 ){
    estado = "jugar";
    time.resetear();
    for( int i = 0; i < b; i++ ){
    block[i].resetearBlock();
  }
  for( int j = 0; j < c; j++ ){
  sheep[j].resetearSheep();
}
personaje.resetearVin();
    }  
   }
  else if( estado.equals( "ganaste" ) || estado.equals( "perdiste" ) ){
    if( mouseX > 393 && mouseX < 393+200 && mouseY > 497 && mouseY < 497+65 ){
    estado = "menu";
   }
  }
 }
}
