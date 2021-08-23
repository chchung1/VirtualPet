void setup()
{
  size(1000,1000);
}

void draw()
{
  noStroke();
  //ears
  fill(255,255,255);
  triangle(400,120,380,200,460,180);
  triangle(600,120,620,200,540,180);
  
  fill(153,153,154);
  ellipse(500,300,315,300); //head
  ellipse(500,550,350,400); //body
  
  //eyes
  fill(179,223,216);
  ellipse(420,300,20,20);
  ellipse(580,300,20,20);
  //nose
  triangle(500,330,490,320,510,320);
  
  //legs
  
 

}
