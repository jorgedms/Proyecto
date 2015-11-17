/*
Universidad del Valle de Guatema
Algoritmos y estrucutra de datos

Integrates:
  Christopher Aju, 13171
  Jorge Manrique, 13600
  Jasmin Valdez, 
  Jose Ochoa, 
  
*/

//variables
PImage fondo;
PImage boton;
PImage boton1, boton2;
PFont font;
String[] data;
int lenght;

//setup
void setup(){
  size(375, 670);
  
  fondo = loadImage("C:/Users/Chris/Documents/Java 2/Proyecto/cell.jpg");
  boton1 = loadImage("C:/Users/Chris/Documents/Java 2/Proyecto/boton1.png");
  boton2 = loadImage("C:/Users/Chris/Documents/Java 2/Proyecto/boton2.png");
  //font
  printArray(PFont.list());
  font = createFont("Verdana Bold", 15);
  textFont(font);
  boton = boton1;
  
  getData();
}

//ciclo infinito
void draw(){
  image(fondo, 0, 0, (4*fondo.width)/6, (4*fondo.height)/6);
  fill(0);
  //peso de persona
  text("Peso", 55,90);
  text("peso persona", 70, 110);
  //agua bebida
  text("Cantidad de agua bebida", 55, 150);
  text("bebida", 70, 170);
  //cantidad de agua necesaria
  text("Cantidad necesaria", 50,220);
  text("cantidad", 70, 240);
  //Mostrar promedio
  text("Promedio",125, 400);
  image(boton, 135, 430, (1*boton.width)/40, (1*boton.height)/40);
  
  //comportamiento boton
  if (mousePressed==true){
    if (mouseX>=135 && mouseX<=190 && mouseY>=430 && mouseY<=485){
      boton = boton2;
    }
  }
  else{
      boton = boton1;
  }
}


void mouseClicked(){
  print("\nmouseX: " + mouseX);
  print("  mouseY: " + mouseY);
}

//lectura de archivo
void getData(){
  /*permite agregar datos indefinidamente en el archivo siempre que 
  este sobre la linea fin*/
  //direccion del archivo a usar
  data = loadStrings("C:/Users/Chris/Documents/Java 2/Proyecto/datos a guardar.txt");
  for (int i=0; !data[i].equals("fin");i++){
    lenght = i;
    //println(data[i]);
  }
  println ("datos: " + (lenght+1));
}