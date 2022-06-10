void setup(){
  size(300,300);
}
String line="";
void draw(){
  background(#CE3E3E);
  fill(0);
  textSize(50);
  text(line, 20, 50);
}
void keyPressed(){
  line = "key: " + key;
  line += "\nkeyCode: " +keyCode;
}
