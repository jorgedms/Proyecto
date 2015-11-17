PImage fondo;
PFont font;

void setup(){
  size(375, 670);
  
  fondo = loadImage("C:/Users/Chris/Documents/Java 2/Proyecto/cell.jpg");
  
  //font
  printArray(PFont.list());
  //font = createFont("Swiss 721 BT", 20);
  font = createFont("Verdana Bold", 20);
  textFont(font);
  //textAlign(CENTER,CENTER);
}

void draw(){
  image(fondo, 0, 0, (4*fondo.width)/6, (4*fondo.height)/6);
  fill(0);
  text("Peso", 50,150);
  text("Cantidad de\n agua bebida", 50, 200);
  text("Cantidad necesaria", 50,300);
  text("Gráfico",125, 400);
}