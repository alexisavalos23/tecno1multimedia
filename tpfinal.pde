import ddf.minim.*;

Aventura adventure;

Minim musica;
AudioPlayer muFondo, s2;

void setup() {
  size(800, 600);
  musica = new Minim( this );
  muFondo = musica.loadFile( "sound1.mpeg" );
  s2 = musica.loadFile( "sound2.mpeg" );
  muFondo.setGain( -15 );
  s2.setGain( -15 );
  //muFondo.loop();
  adventure = new Aventura();

  textAlign(CENTER);
  surface.setResizable(true);
  adventure.cargaBotones();
  adventure.textoCar();
  adventure.inicializarTextosboton();
}

void draw() {

  adventure.actualizar();
  adventure.dibujar();
  adventure.soundGame();
}

void keyPressed() {
  adventure.teclas();
}

void mouseClicked() {
  adventure.botones();
}
