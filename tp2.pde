// TP2--------------ANIMANDO CON CÓDIGOS---------------------

// VARIABLES --------------------------------------------

PFont N;
PImage fondo, nubeI, nubeD;
float posxNI, posxND, T, Tcred;
int V;
color naranja;

String a = "ORIGINAL   STORY   AND   ART";
String b = "Masashi   Kishimoto";

String c = "PUBLISHED BY";
String d = "Shueisha   /   Shonen   Jump";

String e = "SCRIPT";
String f = "Katsuyuki   Sumisawa";

String g = "ART   DIRECTOR";
String h = "Shigenori   Takada";

String i = "DIRECTOR";
String j = "Hayato   Date";

String k = "MUSIC";
String l = "Toshio   Masuda";

String m = "MUSIC   PRODUCTION";
String n = "SME   Visual   Works";

String o = "PRODUCTION";
String p = "TV   Tokyo";
String q = "Studio   PIERROT";


float subida = 350;


void setup(){
  size( 800, 600 );
  
  // VALORES DE VARIABLES ---------------------------------
  
  T = 200;
  Tcred = 36;
  posxNI = -300;
  posxND = 300;
  V = 10;
  naranja = color( 252, 90, 25, 170 );
  
  
  // CARGA DE TIPOGRAFÍA E IMÁGENES -----------------------
  
  N = createFont( "njnaruto.ttf", 200 );
  fondo = loadImage( "ninja storm.png" ); 
  nubeI = loadImage( "nubeI.png" );
  nubeD = loadImage( "nubeD.png" );
  textFont( N );
  textAlign( CENTER, CENTER);
 
}


void draw(){
  
  // DIBUJO TEXTOS E IMÁGENES ------------------------------
  
  image( fondo, 0, 0, 800, 600 );// fondo
  
  textSize( T );// título
  fill( naranja );
  text( "Naruto", width/2, height/2 );
  
  image( nubeI, posxNI, 70, 950, 440 );// nubes
  image( nubeD, posxND, 100, 750, 400 );
  
  textSize( Tcred );// créditos
  fill( 240 );
  text( a, 400, subida+135*3);
  text( b, 400, subida+155*3);
  
  text( c, 400, subida+195*3);
  text( d, 400, subida+215*3);
  
  text( e, 400, subida+255*3);
  text( f, 400, subida+275*3);
  
  text( g, 400, subida+315*3);
  text( h, 400, subida+335*3);
  
  text( i, 400, subida+375*3);
  text( j, 400, subida+395*3);
  
  text( k, 400, subida+435*3);
  text( l, 400, subida+455*3);
  
  text( m, 400, subida+495*3);
  text( n, 400, subida+515*3);
  
  text( o, 400, subida+555*3);
  text( p, 400, subida+575*3);
  text( q, 400, subida+595*3);
  
  
  // ACTUALIZACIÓN ----------------------------------------
  
  posxNI += V;
  posxND -= V;
  
  subida --;
  println( subida );
  
}
