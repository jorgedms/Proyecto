

import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port
PImage img;

void setup() 
{
  size(400, 600);
  
  img = loadImage("androidbg.jpg");

  //String portName = Serial.list()[0];
  //myPort = new Serial(this, portName, 9600);
}

void draw()
{
  background(img);
  
  textSize(32); 
  fill(#FFFFFF);
  text("Pachón Inteligente", 50, 60);
  text("Peso corporal: \n---", 10, 142);
  text("Agua Consumida: \n---", 10, 224);
  text("Agua por tomar: \n---", 10, 306);
  
  
  /*
  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.read();         // read it and store it in val
  }
  */
  
}