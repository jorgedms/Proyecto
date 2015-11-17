/*
Universidad del Valle de Guatema
Algoritmos y estrucutra de datos

Integrates:
  Christopher Aju, 13171
  Jorge Manrique, 13600
  Jasmin Valdez, 
  Jose Ochoa, 
  
*/
//importaciones
import processing.serial.*;

//variables
PImage fondo;
PImage boton;
PImage boton1, boton2;
PFont font;
String[] data;
int lenght;
String input = "";
int peso;
int nuevo;

Pila<Integer> pila;
Serial myPort;

//setup
void setup(){
  size(375, 670);
  
  fondo = loadImage("cell.jpg");
  boton1 = loadImage("boton1.png");
  boton2 = loadImage("boton2.png");
  //font
  printArray(PFont.list());
  font = createFont("Verdana Bold", 15);
  textFont(font);
  boton = boton1;
  
  //se crea el objeto para la pila
  pila = new SimpleEncadenada<Integer>();
  getData();
  
  //puerto
  /*El puerto puede ser 0, 1, 2, 3
  * se debe cambiar el 0 por el puerto definido para arduino
  */
  //String portName = Serial.list()[0];
  //myPort = new Serial(this, portName, 9600);
}

//ciclo infinito
void draw(){
  
  //si hay dato en puerto se agrega en variable nuevo.
  /*
  if (myPort.available() > 0){
    nuevo = myPort.read();
  }
  */
  image(fondo, 0, 0, (4*fondo.width)/6, (4*fondo.height)/6);
  fill(255,255,255);
  //peso de persona
  text("Peso", 55,90);
  text(peso+" libras", 70, 110);
  //agua bebida
  text("Cantidad de agua bebida", 55, 150);
  text("bebida", 70, 170);
  //cantidad de agua necesaria
  text("Cantidad necesaria", 50,220);
  text(prueba(), 70, 240);
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
  data = loadStrings("litros.txt");
  
  //se obtienen los datos del archivo
  //es automatico, no se deberia modificar nada
  for (int i=0; !data[i].equals("fin");i++){
    lenght = i;
    println(data[i]);
  }
  //se imprime la cantidad de datos
  println ("datos: " + (lenght+1));
  
  //paso a pila
  //es automatico, no se deberia modificar nada
  for (int i=lenght; i>0; i--){
    //println("en for");
    pila.push(int (data[i]));
    println(data[i]);
  }
  
  //verificacion
  //println("pila top: " + pila.peek());
}

void keyPressed(){
  if( key >= '0' && key <= '9' ){
    input+=char(key);
    println( "The key entered was: " + char(key) );
    println( "The current input is: " + input );
    if( abs( int( input ) ) > 400 ){
      println( "Whoops! That's too many digits. Let's ignore that last one." );
      input = input.substring(  0, input.length()-1 );
      println( "The current input is: " + input );    
    }
    peso = Integer.parseInt(input);
  } 
  else if( key == '-' && input.equals( "" ) ){
    input+='-';
    println( "The key entered was: " + char(key) );
    println( "The current input is: " + input );
  } 
  else if( key == BACKSPACE && input.length() > 0 ){
    println( "Didn't like that last key you pressed, huh? Ok, we'll get rid of it for you." );
    input = input.substring(  0, input.length()-1 );
    println( "The current input is: " + input );
    peso = 0;
    input = "";
  } 
  else if (key == RETURN || key == ENTER){
    int finalInput = int( input );
    println( "Input entered is: " + finalInput );
    input = "";
    
  }
}

int prueba(){
  int val;
  val = peso -10;
  return val;
}