//LINK DEL VIDEO:  https://youtu.be/yc-tVyNbp2Q

// Nombre: Evelyn Gualtieri
// Comision 1
// TP 3 _Op-Art_ 

PImage cuadro;
int desplazar;
float interactivo = 0;


void setup() {
    size(800, 400);
  cuadro=loadImage("obra_3.jpg");
    desplazar=width/2;
}

void draw() {
  background(255);
  image(cuadro,0,0,400,400);
   pushMatrix(); //me permite mover,rotar o escalar la figura especifica que este dentro de las llaves sin alterar el resto de elementos que esten en el size
   translate(400,0); // desplaza el origen de coordenadas
  
  dibujarPrimeraGrilla();//dibuja la grilla de circulos de abajo
  
  dibujarSegundaGrilla();//dibuja la grilla de circulos de arriba de todoo 
  popMatrix();//sirve para restaurar el sistema de coordenadas antes de aplicar las transformaciones
}

  //__PRIMERA GRILLA PARA LOS CIRCULOS DE ABAJO__
  
  void dibujarPrimeraGrilla(){ //funcion propia 
  int espacioX1 = 62;//62
   int espacioY2 = 98;//98
   int margenX1 = 41;//41
   int margenY2 = 25;//25
  
  for(int y = 0; y<8; y++){ //para repetir un codigo e bloque en especifico, tareas repetitivas como dibujar filas, grillas
   for(int x =0; x<7; x++){
    
  int posX = (x*espacioX1) + margenX1;
    int posY = (y*espacioY2) + margenY2;
    
  
    posX = posX +4;
     posY = posY -0;
    
   
      strokeWeight(1.5);
       if (mousePressed){ //if sirve para tomar deciciones, solo se ejecuta cuando se cumple una condicion especifa 
         float r = map(mouseX,0,width,100,255);
         float g = map(mouseY
         , 0, height,50,200);
         float b =random(150,255);
         
         fill(r,g,b);
       }else{
         fill(255);
       }
      
     dibujarCirculos(posX,posY);
   }
    }
  }
  
  
  //SEGUNDA GRILLA PARA LOS CIRCULOLS SUPERPUESTOS________________________________________
void dibujarSegundaGrilla(){
   int espacioX = 62;//62
   int espacioY = 98;//98
   int margenX = 13;
   int margenY = 10;
   
      if (mousePressed){
     interactivo = map(mouseX,0,width,25,75);
   } 
   
    for(int y = 0; y<8; y++){
   for(int x = 0; x<7; x++){
     
     int posX = (x*espacioX) + margenX;
     int posY = (y*espacioY) + margenY;
     
     posX = posX + int(interactivo);
       posX = posX +1; 
       posY = posY -33;
     
     strokeWeight(2.3);
     fill(255);
     dibujarCirculos(posX,posY);
   }
 }
}
   
void dibujarCirculos(int posX, int posY){
  
  
  ellipse(posX,posY,58,94);//primer gran ellipse

  ellipse(posX,posY,46,76); //segundo gran ellipse

  ellipse(posX,posY,35,59); //tercero medio  
  
        pushMatrix();
  translate(posX,posY);
  
  float anguloGrados = 0;
  if(mousePressed){
 anguloGrados =  map(mouseX, 0, width, 0, 360);
  }
  
  rotate(radians(anguloGrados));

  ellipse(0,0,24,41);//cuarto del centro
  
  ellipse(0,0,14,24);//quinto circulo ante ultimo del centro
  
  ellipse(0,0,4,8);//ellipse del centro (chiquito)

 popMatrix();
 
 }
  
  int calcularDesfase(int columna){
    if(columna%2==0){
      return int (interactivo);
    }else{
      return 0; 
}
}

void keyPressed(){
  interactivo = 0;
}
