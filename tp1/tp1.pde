// Nombre: Evelyn Gualtieri
// Comision 1
// TP 1 - cubismo - 


PImage cuadro; //para la imagen
int desplazar;
void setup(){
  size(800,400);
  
  cuadro=loadImage("bicicletacubista.jpeg");
  desplazar=width/2; //para no tener que ir poniendo desplazar
}

void draw(){
  background(255);
  
  image(cuadro,0,0,400,400); //para que la imagen me quede a la mitad
  
  translate(400,0); //para poder dibujar del otro lado mando las figuras directamente apartir del 400
  
    noStroke();
   fill(#74EBFA);//color del cielo
  rect(0,0,800,400); //CIELO
   fill(#3542C4);//color del mar
  rect(0,118,400,400); //MAR
   fill(#35C1E3);//color de la pared
  quad(0,0,364,1,303,223,0,349);//PARED
   fill(#B8EFFC);//color del piso
  quad(0,349,0,400,514,400,303,223); //PISO
  
      noStroke();
  fill(#61A7CB);
  quad(133,170,228,195,200,317,83,306);
  triangle(140,96,97,120,172,138);
  triangle(54,46,59,87,30,76);
  triangle(1,306,38,390,0,384);
  stroke(#61A7CB);
  strokeWeight(4); 
  line(0,148,134,133);
  line(135,135,166,197);
  line(136,131,98,215);
  line(0,164,25,195);
  line(33,73,0,111);
  
    stroke(0);
     strokeWeight(1);
  line(0,349,303,224);//piso 1
  line(42,399,319,237);//2
  line(163,399,332,248);//3
  line(245,400,346,260);//4
  line(308,400,364,275);//5
  line(355,400,385,293);//6
  line(396,400,400,367);//7
  line(303,224,403,308);//8 linea del borde del piso al mar
  
    noStroke();
   fill(#3855DE); //COLOR DE LAS RUEDAS
  quad(35,178,111,224,110,334,37,388);//rueda delantera(1
  quad(36,178,38,389,0,307,0,231);//(1
  quad(188,152,274,161,266,288,200,316);//rueda trasera
  triangle(189,152,201,317,149,225);//parte de la rueda
   fill(0); //manubrios y asiento
  triangle(213,52,223,96,166,81); //ASIENTO
  triangle(0,26,11,41,0,44);//MANUBRIO IZQUIERDO
  triangle(136,7,108,27,134,43); //MANUBRIO DERECHO
  quad(146,192,123,205,121,245,146,259); //COSO DEL MEDIO
  quad(145,193,165,217,163,245,146,258);//MISMO COSO OTRA PARTE DEL MISMO
  quad(200,226,214,198,239,211,214,249); //COSO DE ATRAS
  triangle(238,212,234,245,212,249); //LA OTRA PARTE DEL COSO
    stroke(0);//para las lineas de la bici
   strokeWeight(3); //grosor
  line(59,112,188,101);//de aca para abajo los caños de la bici
  line(60,114,128,209);
  line(194,83,149,200);
  line(187,103,216,202);
  line(187,104,192,151);
  line(60,85,51,271);
  line(9,39,60,87);
  line(110,26,60,87);
  ellipse(52,273,10,10); //coso delantero
  quad(51,263,45,275,52,284,57,279);//misma parte del coso delantero
  line(188,152,274,160);//de aca abajo las lineas de las ruedas
  line(274,161,266,288);
  line(266,288,200,317);
  line(200,317,149,228);
  line(149,228,188,151);
  line(35,176,111,223);
  line(111,223,108,333);
  line(108,333,37,388);
  line(37,388,0,300);
  line(0,231,35,176);
    strokeWeight(5); //grosor del caño del coso
  line(157,227,207,226); //linea que conecta los cosos 
    strokeWeight(4);//grosor de cadenas
  line(147,193,214,201); //cadena de arriba
  line(149,255,216,248);//cadena de abajo
  
  
    stroke(#FCFDFF);//blanco
   strokeWeight(1);
  line(373,165,400,165);//linea blanca del mar
  
}

void mousePressed(){
  println(mouseX,mouseY); //ayuda a ubicar bien las coordenadas
  
}
