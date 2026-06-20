PImage imagenReferencia;

int columnas = 8;
int filas = 12;
float angulo = 0;
boolean modoDorado = false;

void setup() {
  size(800, 400); 
  imagenReferencia = loadImage("imagreferencia.jpg");
}

void draw() {
  background(255);

 
    image(imagenReferencia, 0, 0, 400, 400);
  
  float tamX = calcularTamCelda(400.0, columnas); 
  float tamY = calcularTamCelda(400.0, filas);    
  
  float inicioX = 400 + tamX / 2;
  float inicioY = tamY / 2;
  
  for (int fila = 0; fila < filas; fila++) {
    for (int col = 0; col < columnas; col++) {

      
      float x = inicioX + col * tamX;
      float y = inicioY + fila * tamY;
        
      boolean invertido = (fila + col) % 2 == 0;

     
      float distancia = dist(mouseX, mouseY, x, y);
      
      float elevacion = map(distancia, 0, 150, -20, 0);
      elevacion = constrain(elevacion, -20, 0);

      dibujarCeldaRectangular(x, y + elevacion, tamX, tamY, invertido, distancia);
    }
  }
}


float calcularTamCelda(float espacioTotal, int cantidad) {
  return espacioTotal / cantidad;
}


void dibujarCeldaRectangular(float x, float y, float tX, float tY, boolean invertido, float distancia) {
  push();

  translate(x, y);
  rotate(angulo);

  float brillo = map(distancia, 0, 200, 255, 200);
  brillo = constrain(brillo, 200, 255);
  
  float gris;
  if (invertido) {
    gris = brillo; 
  } else {
    gris = 90;     
  }

  
  if (modoDorado) {
    fill(gris, gris * 0.8, gris * 0.3); 
  } else {
    fill(gris); 
  }
  
  
  stroke(0);
  strokeWeight(1);
  rect(-tX/2, -tY/2, tX, tY);

  pop();
}

// Evento del Mouse
void mousePressed() {
  angulo += random(-0.3, 0.3); 
}

// Evento del Teclado
void keyPressed() {
  if (key == '+') {
    columnas++;
    filas++;
  } else if (key == '-') {
    if (columnas > 3 ) {
      columnas--;
      filas--;
    }
  } else if (key == 'r' || key == 'R') {
    reiniciar();
  } else if (key == 'd' || key == 'D') {
    modoDorado = !modoDorado;
  }
}


void reiniciar() {
  columnas = 8;
  filas = 12; 
  angulo = 0;
  modoDorado = false;
}
