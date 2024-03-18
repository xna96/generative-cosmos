//randomly generate dots
//interactie mouse trace
PVector[] ellipses = new PVector[60];

void setup(){
  size(600,600);
  background(35,27,107);
  noStroke();
  
  //initialize the array ellipses
  for (int i = 0; i<ellipses.length; i++){
    ellipses[i] = new PVector();
}}

void draw(){

  //pick one pos from the array
  PVector p = ellipses[frameCount % ellipses.length];
  fill(0,191,255,250);
  if(mousePressed || keyPressed){
    p.set(mouseX, mouseY);}
  
  //fill(238,120,138,250);
  ellipse(p.x,p.y, random(0,15), random(0,15));
  ellipse(random(0, width), random(0, height), 15,15);
  float x = random(0,width);
  float y = random(0, height);
  if(dist(x,y, width/2, height/2)<150){
    fill(238,120,138,250);
    rect(x,y, 15,15); //only in the center
    
  }
  
  filter(BLUR,1);
}
  
