class Tecno {


  float posX, posY, rebX, rebY;
  String frase = "TECNO 1 2020";
  int tam;
  color rand; 
  // DUDA 1: NO SÉ COMO HACER QUE CAMBIE D ECOLOR AL TOCAR LOS BORDES-
  //-PERO EL EFECTO QUE LOGRÉ ME GUSTÓ, AUNQUE SEGURO ESTÉ MAL APLICADO

  Tecno( float a, float b, int c ) { 
    posX = a;
    posY = b;
    tam = c;
    rebX = 6.6;
    rebY = 6.6;
    rand = color( random( 255 ), random( 255 ), random( 255 ) );
  }

  void dibujar() {
    fill( color( random( 255 ), random( 255 ), random( 255 ) ) );
    textSize(tam);
    text( frase, posX, posY );
  }

  void mover() {
    posX = posX + rebX;
    posY = posY + rebY;
  }

  void rebotes() {
  // DUDA 2: LA FRASE AL PASAR AL LADO DERECHO DE LA PANTALLA, SE PASA UN POCO-
  //-DEBE SER UNA TONTERA PERO, NO ENCUENTRO EL ERROR
  
    if ( posX > ( width - tam ) ) {
      posX = width - tam;
      rebX =- rebX;
      color( rand );
    } else if ( posX < tam ) {
      posX = tam;
      rebX =- rebX;
      color( rand );
    }

    if ( posY > ( height - tam ) ) {
      posY = height - tam;
      rebY =- rebY;
      color( rand );
    } else if ( posY < tam ) {
      posY = tam;
      rebY =- rebY;
      color( rand );
    }
  }
}
