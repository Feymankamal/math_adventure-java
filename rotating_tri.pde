//drawing 90 rotating triangles
void setup(){
  size(600,600);
  colorMode(HSB);
}
float t=0;
//define a fuction to draw the triangle
void tri(int l){
  noFill();
  triangle(0,-l,(sqrt(3)/2)*l,l/2,-(sqrt(3)/2)*l,l/2);
}
//now draw
void draw(){
  translate(width/2,height/2);
  background(255);
  for(int i=1; i<=90; i++){
    rotate(3);
    //now save the coordinates
    pushMatrix();
    translate(200,0);
    rotate(radians(t+(36*i)));
    //stroke(i+2,255,255);
    tri(100);
    popMatrix();
  }
  t+=3.0;
}
