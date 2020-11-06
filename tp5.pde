// TP5
// NOMBRE ALUMNO: Avalo, Alexis Diego
// NOMBRE TENTATIVO DEL JUEG0: The Vincent's Nightmare

/* PROPUESTA: 
  
  La historia en la que está basada mi aventura gráfica, tenemos a nuestro protagonista que
  tiene pesadillas estando despierto en momentos donde debe tomar una decisión. Entonces, 
  en el mini juego tendríamos a nuestro personaje escalando una torre hasta llegar a la cima;
  con bloques negros (propios de la torre y carneros como enemigos que le impedirán el paso.
  Si el personaje hace contacto con uno de ellos, pierde la poca esperanza que tiene.
 
 */
import ddf.minim.*;

//declaro la clase juego y el contador
Juego game;

Minim musica;
AudioPlayer muFondo, muFondo2;
Tiempo time;

void setup() {
  size( 1000, 600 );
  //inicializo la clase juego y el contador
  game = new Juego();
  musica = new Minim( this );
  muFondo2 = musica.loadFile( "sound1.mp3" );
  muFondo2.setGain( -15 );
  muFondo2.loop();
  time = new Tiempo( TposX, TposY );
  time.empezar();
}

void draw() {
 background( 0 );
  
  //llamo a los métodos de la clase Juego
  game.actualizar();
  game.dibujar();
}

void keyPressed() {
  
  //metodos de las teclas
  game.teclas();
  
}

void mousePressed(){
 game.boton();

}
