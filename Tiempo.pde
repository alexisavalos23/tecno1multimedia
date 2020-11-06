  float TposX = width/3;
  float TposY = height/1.5;


class Tiempo {

  long comenzarTiempo;
  long guardarTiempo;
  boolean contar;
  float x, y, x_1, y_1;
  
  Tiempo( float posX, float posY ) {
    x = posX;
    y = posY;
    guardarTiempo = 10;
    contar = false;
  }

  int tiempoActual() {  
    if( contar ) {
      return( ( int ) ( ( millis()-comenzarTiempo )/1000.0  ));
    } else {
      return( ( int ) ( guardarTiempo/1000.0 ) );
    }
  }
  void empezar() {
    contar = true;
    comenzarTiempo = millis();
  }

  void resetear() {
    empezar();
  }

  void parar() {
    if( contar ) {
      guardarTiempo = millis() - comenzarTiempo;
      contar = false;
    }
  }

  void mostrarTiempo( float posX, float posY ) {
    x_1 = posX;
    y_1 = posY;
    int elTiempo;
    String salidaseg = "";
    String salidamin = "";

    elTiempo=tiempoActual();
    salidaseg = salidaseg + elTiempo%60;
    salidamin = salidamin + elTiempo/60;
    fill( 245, 17, 112 );

    text( salidamin + ":" + salidaseg, x_1, y_1 );
  }
 
}
