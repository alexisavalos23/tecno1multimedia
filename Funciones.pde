
//caja del texto + contenido - - -

void caja( int x, int y, color c, String txt ) {
  
  pushStyle();
  fill( 0, 180 );
  rect( x, y, 600, 150);
  popStyle();
  
  if( estado.equals( "historia1" ) ){
   fill( c );
   textFont( fuente[1], 18 );
   text( txt, 110, 460 );
   text( "Vincent queda desconcertado ante la idea de Kat de casarse", 110, 490 );
   text( "Él no se esperaba la 'pronta' idea...", 110, 520 );
  }
  else if( estado.equals( "historia2" ) ){
   fill( c );
   textFont( fuente[0], 32 );
   text( txt, 110, 460 );
   textFont( fuente[1], 18 );
   text( "Vincent, llevamos más de 5 años de novios, creo que va", 110, 490 );
   text( "siendo hora de formar una familia...*(susp)* Además, mis", 110, 520 );
   text( "padres están preocupados.", 110, 550 );
  }
  else if( estado.equals( "historia3" ) ){
    fill( c );
    textFont( fuente[0], 32 );
    text( txt, 110, 460 );
    textFont( fuente[1], 18 );
    text( "¡Estamos bien así! Digo, no hay porque forzar un casamiento.", 110, 490 );
    text( "Ey, no digo que no te quiera... Yo te amo, Kat y...", 110, 520 );
  }
  else if( estado.equals( "historia5" ) ){
    fill( c );
    textFont( fuente[0], 32 );
    text( txt, 110, 460 );
    textFont( fuente[1], 18 );
    text( "Está bien, Vincent... *(susp)* Veo que aún sigues sin madurar,", 110, 490 );
    text( "yo no quiero seguir así como estamos. Creo que... Lo mejor es", 110, 520 );
    text( "que nos tomemos un tiempo.", 110, 550 );
  }
  else if( estado.equals( "historia6" ) ){
    fill( c );
    textFont( fuente[1], 18 );
    text( txt, 110, 460 );
    text( "bar Stray Sheep. Así se olvidaría de que Katherine lo dejó...", 110, 490 );
    text( "Él no lo esperaba así.", 110, 520 );
  }
  else if( estado.equals( "F1his1" ) ){
    fill( c );
    textFont( fuente[0], 32 );
    text( txt, 110, 460 );
    textFont( fuente[1], 18 );
    text( "Mmm... Ok, pensandolo bien puede que ya sea hora de dar el", 110, 490 );
    text( "siguiente paso... ¡Acepto! Camonos, Katherine.", 110, 520 );
    text( "¡Acepto! Casemonos, Katherine.", 110, 550 );
  }
  else if( estado.equals( "F1his2" ) ){
    fill( c );
    textFont( fuente[0], 32 );
    text( txt, 110, 460 );
    textFont( fuente[1], 18 );
    text( "*(sonrisa)*", 110, 490 );
  }
  else if( estado.equals( "F1his3" ) ){
    fill( c );
    textFont( fuente[1], 18 );
    text( txt, 110, 460 );
    text( "casarse con el amor de toda su vida Katherine. Junto a sus", 110, 490 );
    text( "amigos, celebran su matrimonio en el bar Stray Sheep.", 110, 520 );
  }
  else if( estado.equals( "F1his4" ) ){
    fill( c );
    textFont( fuente[0], 32 );
    text( txt, 110, 460 );
    textFont( fuente[1], 18 );
    text( "*susurro* Te amo tanto, Vincent...", 110, 490 );
    }
  else if( estado.equals( "F2his1" ) ){
    fill( c );
    textFont( fuente[1], 18 );
    text( txt, 110, 460 );
    text( "apareció de la nada, y decide sentarse junto a él.", 110, 490 );
  }
  else if( estado.equals( "F2his2" ) ){
    fill( c );
    textFont( fuente[1], 18 );
    text( txt, 110, 460 );
    text( "nuestro protagonista. Luego de unos tragos, deciden hacer", 110, 490 );
    text( "algo más que solo charlar...", 110, 520 );
  }
  else if( estado.equals( "F2his3" ) ){
    fill( c );
    textFont( fuente[1], 18 );
    text( txt, 110, 460 );
    text( "Digamos que él ya encontró su consuelo. ¡Ah! el nombre de", 110, 490 );
    text( "esta chica es... Catherine.", 110, 520 );
  }
  else if( estado.equals( "F3his1" ) ){
    fill( c );
    textFont( fuente[1], 18 );
    text( txt, 110, 460 );
    text( "La separación lo afectó y debería de hacer un cambio en su", 110, 490 );
    text( "vida, sin arrepentimientos.", 110, 520 );
  }
  else if( estado.equals( "F3his2" ) ){
    fill( c );
    textFont( fuente[1], 18 );
    text( txt, 110, 460 );
    text( "y tuvo la oportunidad de invertir todo ese premio. Quizá sea", 110, 490 );
    text( "hora de hacer un viaje.", 110, 520 );
  }
  else if( estado.equals( "F3his3" ) ){
    fill( c );
    textFont( fuente[1], 18 );
    text( txt, 110, 460 );
  }
  else if( estado.equals( "F3his4" ) ){
    fill( c );
    textFont( fuente[0], 32 );
    text( txt, 110, 460 );
    textFont( fuente[1], 18 );
    text( "¿Por qué vivir una vida en la que no haces lo que querés?.", 110, 490 );
    text( "Esa es la receta para una vida desastrosa.", 110, 520 );
  }
}

//pantalla "guia"
void pantGuia( color c2, String txt6, String txt7 ){
fill( 0, 180 );
    stroke( 255, 180 );
    strokeWeight(4);
    rect( -5, 40, 450, 70);

    fill( 0, 180 );
    stroke( 214, 35, 100, 180 );
    strokeWeight(5);
    rect( 50, 150, 700, 350);

    fill( c2 );
    stroke( 0, 30 );
    strokeWeight( 5 );
    ellipse( 120, 250, 65, 65 );
    fill( 255 );
    textFont( fuente[1], 55 );
    text( ">", 105, 266 );
    textFont( fuente[1], 25 );
    text( txt6, 183, 257 );
    
    fill( c2 );
    stroke( 0, 30 );
    strokeWeight( 5 );
    rect( 75, 380, 90, 35 );
    fill( 255 );
    textFont( fuente[0], 30 );
    text( "Botón", 88, 407 );
    textFont( fuente[1], 25 );
    text( txt7, 183, 408 );

    fill( c2 );
    stroke( 0, 30 );
    strokeWeight( 5 );
    rect( 625, 535, 150, 45 );
    fill( 255 );
    textFont( fuente[0], 42 );
    text( "Avanzar", 635, 573 );

    fill( 255 );
    textFont( fuente[0], 65 );
    text( "Guía", 320, 100 );
}
// contenido pantalla decision--
void decision( color c1, String txt2, String txt3 ){
    fill( 0, 100 );
    rect( 0, 0, width, height);

    fill( 0, 180 );
    stroke( 255, 180 );
    strokeWeight(4);
    rect( -5, 40, 450, 70);

    fill( c1 );
    stroke( 0, 30 );
    strokeWeight( 5 );
    rect( 175, 480, 175, 50 );

    fill( c1 );
    stroke( 0, 30 );
    strokeWeight( 5 );
    rect( 450, 480, 175, 50 );

    fill( 255 );
    textFont( fuente[1], 30 );
    text( txt2, 189, 300 );
    fill( 255 );
    textFont( fuente[0], 65 );
    text( txt3, 50, 100 );

}
// dibujo boton creditos/ texto 'fin'
void credFin( color c1, color c, String txt4, String txt5 ){
    fill( c1 );
    stroke( 0, 30 );
    strokeWeight( 5 );
    rect( 625, 25, 150, 45 );
    fill( c );
    textFont( fuente[0], 45 );
    text( txt4, 646, 64 );
    textFont( fuente[0], 65 );
    text( txt5, 600, 570 );
}
//tecla "RIGHT" - - -
void tecla2( int x, int y, color c ) {  

  pushStyle();
  fill( c );
  stroke( 0, 30 );
  strokeWeight(5);
  ellipse( x, y, 55, 55 );
  fill( 255 );
  textFont( fuente[1], 46 );
  text( ">", 738, 514 ); //tecla - - -
  popStyle();
}

void pantIn( char t, String estadoSig ){
  if ( ( key == t) ) {
    estado = estadoSig;
    }
  }
void cambPant( float l, String estadoSig ){
  if( ( keyCode == l ) ) {
   estado = estadoSig;
    }
  }
void botonN( String estadoSig ){
 if ( mouseX > 175 && mouseX < 175+175 && mouseY > 480 && mouseY < 480+50 ) {
   estado = estadoSig;
 }
}
void botonA( String estadoSig ){
   if ( mouseX > 450 && mouseX < 450+175 && mouseY > 480 && mouseY < 480+50 ) {
     estado = estadoSig;
}  
 }
 
//void boton(){
//  if( mouseX >  Botones["guia"][0] && mouseX < Botones[][] && mouseY > Botones[][] && mouseY < Botones[][] )

//}

 
