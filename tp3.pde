// TP3 - - - AVENTURA GRÁFICA: CATHERINE - - - ALEXIS DIEGO AVALO - - - TECNO1 2020 - - -

import ddf.minim.*;

Minim musica;
AudioPlayer muFondo, muPresnt, mu3, mu4, mu5, mu6, mu7, mu8, mu9;

PFont fuente1, fuente2;
PImage inicio, logo, V, h1, h2, h3, h4, h5, h6, h7, f1a, f1b, f1c, f1d, f2a, f2b, f2c, f3a, f3b, f3c, f3d;

String estado;

String a = "UNLP";
String b = "Facultad de Artes";
String c = "TECNO1  2020";

String d = "Realizado por";
String e = "Alexis Diego Avalos";

String f = "Música";
String g = "Shoji Meguro";

String h = "Basado en la obra original de";
String i = "Atlus Co., Ltd";


void setup(){
  size( 800, 600 );
  
// - - - CARGO AUDIO, IMÁGENES Y FUENTE - - - - - - - - - - - - - - - 
  
  musica =  new Minim(this);
  muFondo = musica.loadFile( "soundInicio.mp3" );
  muPresnt = musica.loadFile( "soundPresnt.mp3" );
  mu3 = musica.loadFile( "sound3.mp3" );
  mu4 = musica.loadFile( "sound4.mp3" );
  mu5 = musica.loadFile( "sound5.mp3" );
  mu6 = musica.loadFile( "sound6.mp3" );
  mu7 = musica.loadFile( "sound7.mp3" );
  mu8 = musica.loadFile( "sound8.mp3" );
  mu9 = musica.loadFile( "sound9.mp3" );
  muFondo.setGain( -15 );
  muPresnt.setGain( -15 );
  mu3.setGain( -15 );
  mu4.setGain(-15 );
  mu5.setGain( -15 );
  mu6.setGain( -15 );
  mu7.setGain( -15 );
  mu8.setGain( -15 );
  mu9.setGain( -15 );
  //muFondo.loop();
  
  estado = "pantalla inicio";
  
  fuente1 = createFont( "Catherine.otf", 200);
  fuente2 = createFont( "PlutoRegular.ttf", 200 );
  
  inicio = loadImage( "background heart.jpg");
  logo = loadImage( "logo.png" );
  V = loadImage( "vincent.png" );
  h1 = loadImage( "historia1.jpg" );
  h2 = loadImage( "historia2.jpg" );
  h3 = loadImage( "historia3.jpg" );
  h4 = loadImage( "historia4.jpg" );
  h5 = loadImage( "historia5.jpg" );
  h6 = loadImage( "historia6.jpg" );
  h7 = loadImage( "historia7.jpg" );
  f1a = loadImage( "f1h1.jpg" );
  f1b = loadImage( "f1h2.jpg" );
  f1c = loadImage( "f1h3.jpg" );
  f1d = loadImage( "f1h4.jpg" );
  f2a = loadImage( "f2h1.jpg" );
  f2b = loadImage( "f2h2.jpg" );
  f2c = loadImage( "f2h3.jpg" );
  f3a = loadImage( "f3h1.jpg" );
  f3b = loadImage( "f3h2.jpg" );
  f3c = loadImage( "f3h3.jpg" );
  f3d = loadImage( "f3h4.jpg" );

}


void draw(){

// - - - DIBUJO LAS PANTALLAS - - - - - - - - - - - - - - - - - - - 
 
 // - - - PANTALLA INICIO - - -
 
 if( estado.equals( "pantalla inicio" ) ){
  image( inicio, 0, 0, 800, 600 );
  
  fill( 0, 180 );
  noStroke();
  ellipse( 400, 200, 280, 280);
  image( logo, 135, -10, 550, 500);
  
  fill( 245, 17, 112, 110 );
  stroke( 0, 30 );
  strokeWeight(5);
  rect( 125, 470, 550, 85 );
  fill( 255 );
  textFont( fuente1, 65 );
  text( "Presioná la tecla 'space' ", 163, 540 ); //tecla - - -
 }
 
 // - - - GUÍA - - -
 
 if( estado.equals( "guia" ) ){
   image( inicio, 0, 0, 800, 600 );
   fill( 0, 100 );
   rect( 0, 0, 800, 600);
   
   fill( 0, 180 );
   stroke( 255, 180 );
   strokeWeight(4);
   rect( -5, 40, 450, 70);
   
   fill( 0, 180 );
   stroke( 214, 35, 100, 180 );
   strokeWeight(5);
   rect( 50, 150, 700, 350);
   
   fill( 245, 17, 112 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   rect( 75, 435, 90, 35 );
   fill( 255 );
   textFont( fuente1, 30 );
   text( "Botón", 88, 465 );
   textFont( fuente2, 25 );
   text( "Estos son botones, hacer CLICK en ellos.", 183, 458 );
   
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   ellipse( 120, 210, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 100, 226 );
   textFont( fuente2, 25 );
   text( "Para volver ATRÁS presiona la tecla 'a'.", 183, 215 );
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   ellipse( 120, 330, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( ">", 105, 346 );
   textFont( fuente2, 25 );
   text( "Para AVANZAR presiona la tecla 'RIGHT'.", 183, 337 );
   
   fill( 245, 17, 112 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   rect( 625, 535, 150, 45 );
   fill( 255 );
   textFont( fuente1, 42 );
   text( "Avanzar", 635, 573 );
   
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Guía", 320, 100 );
   
 }

 // - - - PRESENTACIÓN VINCENT - - -
 
 if( estado.equals( "vincent" ) ){
  image( inicio, 0, 0, 800, 600 );
  
  fill( 0, 120 );
  noStroke();
  rect( 0, 0, 800, 600 );
  image( V, 55, 5, 250, 590 );
  
  fill( 0, 180 );
  stroke( 255, 180 );
  strokeWeight(4);
  rect( 300, 40, 600, 70);
  
  fill( 0, 180 );
  stroke( 214, 35, 100, 180 );
  strokeWeight( 5 );
  rect( 320, 150, 451, 240 );
  
  fill( 245, 17, 112 );
  stroke( 0, 30 );
  strokeWeight( 5 );
  rect( 275, 480, 250, 70 );
  fill( 255 );
  textFont( fuente1, 65 );
  text( "Comenzar", 304, 540 ); //botón - - -
  
  fill( 255 );
  textFont( fuente1, 65 );
  text( "Vincent Brooks", 325, 100 );
  
  fill( 255 );
  textFont( fuente2, 20 );
  text( "Nuestro protagonista: un tipo normal de", 330, 177 );
  text( "32 años. Le tiene miedo al compromiso,", 330, 207 );
  text( "como demuestra cuando su novia desde", 330, 237 );
  text( "hace cinco años empieza a hablar sobre", 330, 267 );
  text( "el matrimonio. De un modo u otro, debe", 330, 297 );
  text( "elegir el camino adecuado para él...", 330, 327 );
  
 }
 
 //- - - HISTORIA - - -
 
 if( estado.equals( "historia1" ) ){
   image( h1, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente2, 18 );
   text( "La pareja almuerza en el bar Chrono Rabbit.", 110, 460 );
   text( "Vincent queda desconcertado ante la idea de Kat de casarse", 110, 490 );
   text( "Él no se esperaba la 'pronta' idea...", 110, 520 );
 }

 if( estado.equals( "historia2" ) ){
   image( h2, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente1, 32 );
   text( "Katherine", 110, 460 );
   textFont( fuente2, 18 );
   text( "Vincent, llevamos más de 5 años de novios, creo que va", 110, 490 );
   text( "siendo hora de formar una familia...*(susp)* Además, mis", 110, 520 );
   text( "padres están preocupados.", 110, 550 );
}
 if( estado.equals( "historia3" ) ){
   image( h3, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente1, 32 );
   text( "Vincent", 110, 460 );
   textFont( fuente2, 18 );
   text( "¡Estamos bien así! Digo, no hay porque forzar un casamiento.", 110, 490 );
   text( "Ey, no digo que no te quiera... Yo te amo, Kat y...", 110, 520 );
 }
 if( estado.equals( "decision1" ) ){
   image( h4, 0, 0, 800, 600 );
   fill( 0, 100 );
   rect( 0, 0, 800, 600);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 300, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 312 ); //tecla - - -
   
   fill( 0, 180 );
   stroke( 255, 180 );
   strokeWeight(4);
   rect( -5, 40, 450, 70);
   
   fill( 245, 17, 112 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   rect( 175, 480, 175, 50 );
   
   fill( 245, 17, 112 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   rect( 450, 480, 175, 50 );
   
   fill( 255 );
   textFont( fuente2, 30 );
   text( "¿Qué hará Vincent Brooks?", 189, 300 );
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Tomá una decisión", 50, 100 );
   textFont( fuente1, 45 );
   text( "Negarse", 200, 520 );
   text( "Aceptar", 479, 520 );
 } 
   
 if( estado.equals( "historia5" ) ){
   image( h5, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente1, 32 );
   text( "Katherine", 110, 460 );
   textFont( fuente2, 18 );
   text( "Está bien, Vincent... *(susp)* Veo que aún sigues sin madurar,", 110, 490 );
   text( "yo no quiero seguir así como estamos. Creo que... Lo mejor es", 110, 520 );
   text( "que nos tomemos un tiempo.", 110, 550 );
   //text( "un tiempo.", 110, 580 );
 }
 
 if( estado.equals( "historia6" ) ){
   image( h6, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   textFont( fuente2, 18 );
   text( "Luego, esa noche nuestro protagonista fue a embriagar en el", 110, 460 );
   text( "bar Stray Sheep. Así se olvidaría de que Katherine lo dejó...", 110, 490 );
   text( "Él no lo esperaba así.", 110, 520 );
  }
  
  if( estado.equals( "decision2" ) ){
   image( h7, 0, 0, 800, 600 );
   fill( 0, 100 );
   rect( 0, 0, 800, 600);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 300, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 312 ); //tecla - - -
   
   fill( 0, 180 );
   stroke( 255, 180 );
   strokeWeight(4);
   rect( -5, 40, 450, 70);
   
   fill( 245, 17, 112 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   rect( 175, 480, 175, 50 );
   
   fill( 245, 17, 112 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   rect( 450, 480, 175, 50 );
   
   fill( 255 );
   textFont( fuente2, 30 );
   text( "¿Qué hará Vincent Brooks?", 189, 300 );
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Tomá una decisión", 50, 100 );
   textFont( fuente1, 45 );
   text( "Ir a casa", 195, 520 );
   text( "Quedarse", 475, 520 );
 } 
  
   
  // - - - FINAL 1 - - -
  
  if( estado.equals( "F1his1" ) ){
   image( f1a, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente1, 32 );
   text( "Vincent", 110, 460 );
   textFont( fuente2, 18 );
   text( "Mmm... Ok, pensandolo bien puede que ya sea hora de dar el", 110, 490 );
   text( "siguiente paso... ¡Acepto! Camonos, Katherine.", 110, 520 );
   text( "¡Acepto! Casemonos, Katherine.", 110, 550 );
   }
   
  if( estado.equals( "F1his2" ) ){
   image( f1b, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente1, 32 );
   text( "Katherine", 110, 460 );
   textFont( fuente2, 18 );
   text( "*(sonrisa)*", 110, 490 );
  }
  
  if( estado.equals( "F1his3" ) ){
   image( f1c, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente2, 18 );
   text( "Vincent logró despejar todas sus dudas y da el gran paso:", 110, 460 );
   text( "casarse con el amor de toda su vida Katherine. Junto a sus", 110, 490 );
   text( "amigos, celebran su matrimonio en el bar Stray Sheep.", 110, 520 );
  }
  
  if( estado.equals( "F1his4" ) ){
   image( f1d, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   rect( 625, 25, 150, 45 );
   fill( 255 );
   textFont( fuente1, 45 );
   text( "Créditos", 646, 64 );
   
   fill( 255 );
   textFont( fuente1, 32 );
   text( "Katherine", 110, 460 );
   textFont( fuente2, 18 );
   text( "*susurro* Te amo tanto, Vincent...", 110, 490 );
   textFont( fuente1, 65 );
   text( "Fin.", 600, 570 );
   }
  
   // - - - FINAL 2 - - -
   
  if( estado.equals( "F2his1" ) ){
   image( f2a, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   textFont( fuente2, 18 );
   text( "De repente, una misteriosa chica sorprende Vincent ya que", 110, 460 );
   text( "apareció de la nada, y decide sentarse junto a él.", 110, 490 );
  }
  
  if( estado.equals( "F2his2" ) ){
   image( f2b, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   textFont( fuente2, 18 );
   text( "Perdido en sus ojos, la hermosa rubia deja enamorado a", 110, 460 );
   text( "nuestro protagonista. Luego de unos tragos, deciden hacer", 110, 490 );
   text( "algo más que solo charlar...", 110, 520 );
  }
   
  if( estado.equals( "F2his3" ) ){
   image( f2c, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   rect( 625, 25, 150, 45 );
   fill( 255 );
   textFont( fuente1, 45 );
   text( "Créditos", 646, 64 );
   
   fill( 255 );
   textFont( fuente2, 18 );
   text( "Al parecer, ella se adecúa a los gustos y forma de ser de Vins.", 110, 460 );
   text( "Digamos que él ya encontró su consuelo. ¡Ah! el nombre de", 110, 490 );
   text( "esta chica es... Catherine.", 110, 520 );
   textFont( fuente1, 65 );
   text( "Fin.", 600, 570 );
 }
 
  // - - - FINAL 3 - - -
  
  if( estado.equals( "F3his1" ) ){
   image( f3a, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   textFont( fuente2, 18 );
   text( "Al día siguiente, nuestro protagonista despierta pensativo.", 110, 460 );
   text( "La separación lo afectó y debería de hacer un cambio en su", 110, 490 );
   text( "vida, sin arrepentimientos.", 110, 520 );
  }
  
  if( estado.equals( "F3his2" ) ){
   image( f3b, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   textFont( fuente2, 18 );
   text( "Hace poco había ganado una apuesta en carrera de caballos", 110, 460 );
   text( "y tuvo la oportunidad de invertir todo ese premio. Quizá sea", 110, 490 );
   text( "hora de hacer un viaje.", 110, 520 );
  }
  
  if( estado.equals( "F3his3" ) ){
   image( f3c, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 750, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 46 );
   text( ">", 738, 514 ); //tecla - - -
   
   textFont( fuente2, 18 );
   text( "Una vez en la estación espacial, Vincent reflexiona...", 110, 460 );
  }
  
  if( estado.equals( "F3his4" ) ){
   image( f3d, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 430, 600, 150);
   
   fill( 245, 17, 112, 180 );
   stroke( 0, 30 );
   strokeWeight(5);
   ellipse( 50, 500, 55, 55 );
   fill( 255 );
   textFont( fuente2, 40 );
   text( "A", 35, 512 ); //tecla - - -
   
   fill( 245, 17, 112 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   rect( 625, 25, 150, 45 );
   fill( 255 );
   textFont( fuente1, 45 );
   text( "Créditos", 646, 64 );
   
   fill( 255 );
   textFont( fuente1, 32 );
   text( "Vincent", 110, 460 );
   textFont( fuente2, 18 );
   text( "¿Por qué vivir una vida en la que no haces lo que querés?.", 110, 490 );
   text( "Esa es la receta para una vida desastrosa.", 110, 520 );
   textFont( fuente1, 65 );
   text( "Fin.", 600, 570 );
   }
   
// - - - CRÉDITOS - - - - - - - - - - - - - - - - - - - - - - - - - 

  if( estado.equals( "creditos" ) ){
   image( inicio, 0, 0, 800, 600 );
  
   fill( 0, 120 );
   noStroke();
   rect( 0, 0, 800, 600 );

   fill( 255 );
   textFont( fuente1, 50 );
   text( b, 252, 105 );
   text( d, 282, 240 );
   text( f, 334, 380 );
   text( h, 160, 510 );
   
   fill( 255 );
   textFont( fuente2, 30 );
   text( a, 355, 50 );
   text( c, 288, 150 );
   text( e, 250, 290 );
   text( g, 295, 430 );
   text( i, 294, 560 );
   
   fill( 245, 17, 112 );
   stroke( 0, 30 );
   strokeWeight( 5 );
   rect( 675, 25, 100, 48 );
   fill( 255 );
   textFont( fuente1, 45 );
   text( "Salir", 685, 66 );
 
 
  }

// - - - PRUEBA DE SONIDO POR PANTALLA - - - - - - - - - - - - - - -
 
 if( estado.equals( "pantalla inicio" ) || estado.equals( "guia" ) ) {
   muFondo.play();
  
 }else{
  muFondo.pause();
  muFondo.rewind();
}
 if( estado.equals( "vincent" ) ){
  muPresnt.play();
}
 else{
 muPresnt.pause();
  muPresnt.rewind();
}
if( estado.equals( "historia1" ) || estado.equals( "historia2" ) || estado.equals( "historia3" ) || estado.equals( "decision1" ) || estado.equals( "historia5" ) ) {
   mu3.play();
  
 }else{
  mu3.pause();
  mu3.rewind(); 
 }
 if( estado.equals( "historia6" ) || estado.equals( "decision2" ) || estado.equals( "F2his1" ) || estado.equals( "F2his2" ) ) {
   mu5.play();
  
 }else{
  mu5.pause();
  mu5.rewind(); 
}
if( estado.equals( "creditos" ) ) {
   mu6.play();
  
 }else{
  mu6.pause();
  mu6.rewind();
 }
 if( estado.equals( "F2his3" ) ) {
   mu4.play();
  
 }else{
  mu4.pause();
  mu4.rewind();
}
if( estado.equals( "F1his1" ) || estado.equals( "F1his2" ) || estado.equals( "F1his3" ) || estado.equals( "F1his4" ) ) {
   mu7.play();
  
 }else{
  mu7.pause();
  mu7.rewind();
}
if( estado.equals( "F3his1" ) || estado.equals( "F3his2" ) ){
  mu8.play();
  
}else{
  mu8.pause();
  mu8.rewind();
 }
 if( estado.equals( "F3his3" ) || estado.equals( "F3his4" ) ){
  mu9.play();
  
}else{
  mu9.pause();
  mu9.rewind();
}
}
  
// - - - CAMBIOS DE PANTALLA CON EL TECLADO - - - - - - - - - - - - -

void keyPressed(){
  
 //- - - TECLAS ATRÁS O SIGUIENTE - - -
 if( estado.equals( "pantalla inicio" ) ){
  if( key == ' ' ){
   estado = "guia";
    }
  }
 else if( estado.equals( "historia1" ) ){
  if( key == 'a' ){
      estado = "vincent";
    }
      if( keyCode == RIGHT ){
      estado = "historia2";
    }
  } 
  else if( estado.equals( "historia2" ) ){
    if( key == 'a' ){
      estado = "historia1";
    }
     if( keyCode == RIGHT ){
      estado = "historia3";
    }
  }
  else if( estado.equals( "historia2" ) ){
    if( key == 'a' ){
      estado = "historia1";
    }
    if( keyCode == RIGHT ){
      estado = "historia3";
    }
  }
  else if( estado.equals( "historia3" ) ){
    if( key == 'a' ){
      estado = "historia2";
    }
    if( keyCode == RIGHT ){
      estado = "decision1";
   }
  }
   else if( estado.equals( "decision1" ) ){
   if( key == 'a' ){
    estado = "historia3"; 
   }
 }
   else if( estado.equals( "historia5" ) ){
   if( key == 'a' ){
    estado = "decision1"; 
   }
   if( keyCode == RIGHT ){
   estado = "historia6"; 
   }
 }
  else if( estado.equals( "historia6" ) ){
  if( key == 'a' ){
   estado = "historia5"; 
   }
  if( keyCode == RIGHT ){
   estado = "decision2"; 
   }
 }
 else if( estado.equals( "decision2" ) ){
  if( key == 'a' ){
   estado = "historia6"; 
   }
 }
  else if( estado.equals( "F1his1" ) ){
  if( key == 'a' ){
   estado = "decision1";
 }
 if( keyCode == RIGHT ){
  estado = "F1his2";
  }
 }
 else if( estado.equals( "F1his2" ) ){
 if( key == 'a' ){
  estado = "F1his1";
 }
 if( keyCode == RIGHT ){
  estado = "F1his3";
  }
 }
 else if( estado.equals( "F1his3" ) ){
 if( key == 'a' ){
  estado = "F1his2";
  }
 if( keyCode == RIGHT ){
  estado = "F1his4";
  }
 }
 else if( estado.equals( "F1his4" ) ){
 if( key == 'a' ){
  estado = "F1his3";
  }
 }
 else if( estado.equals( "F2his1" ) ){
  if( key == 'a' ){
   estado = "decision2"; 
   }
  if( keyCode == RIGHT ){
   estado = "F2his2"; 
   }
 }
 else if(estado.equals( "F2his2" ) ){
   if( key == 'a' ){
     estado = "F2his1";
   }
   if( keyCode == RIGHT ){
     estado = "F2his3";
   }
 }
  else if(estado.equals( "F2his3" ) ){
   if( key == 'a' ){
     estado = "F2his2";
   }
  }
  else if(estado.equals( "F3his1" ) ){
   if( key == 'a' ){
     estado = "decision2";
   }
   if( keyCode == RIGHT ){
     estado = "F3his2";
   }
 }
 else if(estado.equals( "F3his2" ) ){
   if( key == 'a' ){
     estado = "F3his1";
   }
   if( keyCode == RIGHT ){
     estado = "F3his3";
   }
 }
 else if(estado.equals( "F3his3" ) ){
   if( key == 'a' ){
     estado = "F3his2";
   }
   if( keyCode == RIGHT ){
     estado = "F3his4";
   }
 }
 else if(estado.equals( "F3his4" ) ){
   if( key == 'a' ){
     estado = "F3his3";
   }
 }
}


// - - - BOTONES / CLICK MOUSE - - - - - - - - - - - - - - - - - - - -

void mousePressed(){
  
  if( estado.equals( "guia" ) ){
    if( mouseX > 625 && mouseX < 625+150 && mouseY > 535 && mouseY < 535+45 ){
      estado = "vincent";
    }
  }
  
  if( estado.equals( "vincent" ) ){
    if( mouseX > 275 && mouseX < 275+250 && mouseY > 480 && mouseY < 480+70 ){
      estado = "historia1";
    }
  }
  if( estado.equals( "decision1" ) ){
    if( mouseX > 175 && mouseX < 175+175 && mouseY > 480 && mouseY < 480+50 ){
      estado = "historia5";
    }
  }
  if( estado.equals( "decision1" ) ){
    if( mouseX > 450 && mouseX < 450+175 && mouseY > 480 && mouseY < 480+50 ){
      estado = "F1his1";
    }
  }
  if( estado.equals( "F1his4" ) || estado.equals( "F2his3" ) || estado.equals( "F3his4" ) ){
    if( mouseX > 625 && mouseX < 625+150 && mouseY > 25 && mouseY < 25+45 ){
      estado = "creditos";
   }
  }
  else if( estado.equals( "creditos" ) ){
    if( mouseX > 675 && mouseX < 675+100 && mouseY > 25 && mouseY < 25+48 ){
     estado = "pantalla inicio";
    }
  }
  if( estado.equals( "decision2" ) ){
    if( mouseX > 175 && mouseX < 175+175 && mouseY > 480 && mouseY < 480+50 ){
      estado = "F3his1";
    }
  }
  if( estado.equals( "decision2" ) ){
    if( mouseX > 450 && mouseX < 450+175 && mouseY > 480 && mouseY < 480+50 ){
      estado = "F2his1";
    }
  }
}
