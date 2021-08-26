void setup()
{
  size(1000,1000);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}

void draw()
{
  background(192);
  int y = arduino.analogRead(5);
  System.out.println(y);
  
  noStroke();
  fill(21+y,250,255);
  //ears
  triangle(400,120-y,380,200,460,180);
  triangle(600,120-y,620,200,540,180);
  //legs
  ellipse(460,750,50,80+y);
  ellipse(540,750,50,80+y);
  //arms
  ellipse(690,490,80,50);
  ellipse(310,490,80,50);
 
  fill(153,153,154);
  ellipse(500,300,315,300); //head
  ellipse(500,550,350,400); //body
 
  //eyebrows
  fill(255,255,255);
  rect(400,250,35,20);
  rect(565,250,35,20);
  //eyes - original eye color: 179, 223, 216
  fill(179,223,216);
  ellipse(420,300,20,20);
  ellipse(580,300,20,20);
  //nose
  fill(245,185,168);
  triangle(500,330,490,310,510,310);
  //mouth
  stroke(1);
  line(500,330,500,350);
  
}
