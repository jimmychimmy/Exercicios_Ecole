//variave para guardar o numero
// tamanho da bolinha = 80 pixels
float diametro = 80;

// Cria a janela do programa.
void setup(){
  size(600,600);
}

void draw(){
  //pinta o fundo de cinza
  background(30);

  rectMode(CENTER);

  fill(70);
  rect(width/2, 540, 40, 120);

  fill(120);
  rect(width/2, height/2, 140, 360);

  boolean dentroSemaforo =
    mouseX > width/2 - 70 &&
    mouseX < width/2 + 70 &&
    mouseY > height/2 - 180 &&
    mouseY < height/2 + 180;

  noStroke();

  if(dentroSemaforo && mouseY < 240){
    fill(255,0,0);
  } else {
    fill(255,80);
  }
  circle(width/2, 180, diametro);

  if(dentroSemaforo && mouseY >= 240 && mouseY < 360){
    fill(255,255,0);
  } else {
    fill(255,80);
  }
  circle(width/2, 300, diametro);

  if(dentroSemaforo && mouseY >= 360){
    fill(0,255,0);
  } else {
    fill(255,80);
  }
  circle(width/2, 420, diametro);
}
