// bolinda: r = raio  d = diâmetro da bolinha
float r = 15;
float d = 30;

// tamanho das 3 caixinhas
float tamanhoCaixa = 100;
//define que cada caixa terá: 100 pixels de largura e altura

// espaço que tudo vai aconntecer, tamanho janela roda uma vez quando o programa inicia
void setup(){
  size(600,600);
}

// roda todo frame, redesenhado constantemente
void draw(){
  background(70);
  //pintando pinto kkk fundo de cinza

// cor padrão da bolinha branca
  fill(255);

// detectar a zona pra colorir
///se mouse esta na primeira caixa? entao colorir vermeio
  if(mouseX > 100 && mouseX < 200 &&
     mouseY > 250 && mouseY < 350){
    fill(255,0,0); // vermelho
  }

  else if(mouseX > 250 && mouseX < 350 &&
          mouseY > 250 && mouseY < 350){
    fill(0,255,0); // verde
  }

  else if(mouseX > 400 && mouseX < 500 &&
          mouseY > 250 && mouseY < 350){
    fill(0,0,255); // azul
  }

 // desenhar bolinha
  noStroke();
  circle(mouseX,mouseY,d);

 // caixa com contorno cinza
  noFill();
  stroke(180); // cinza

//codigo igual prof
  rect(100,250,tamanhoCaixa,tamanhoCaixa);
  rect(250,250,tamanhoCaixa,tamanhoCaixa);
  rect(400,250,tamanhoCaixa,tamanhoCaixa);
}
