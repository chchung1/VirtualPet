import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup()
{
  size(1000,1000);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}

void draw()
{
  background(138, 197, 222); 
  int y = arduino.analogRead(5);
  System.out.println(y);

 //ground
  fill(186,223,160);
  noStroke();
  rect(0,700,1000,300);
  
  noStroke();
  fill(255,250,255);
  
  //ears
  if (y <= 460){
    triangle(400-y/8,120+y/8,380,200,460,180);
    triangle(600+y/8,120+y/8,620,200,540,180);}
    else{
    triangle(342.5,177.5,380,200,460,180);
    triangle(657.5,177.5,620,200,540,180);}
  
  
  //legs
  ellipse(460,750,50,80);
  ellipse(540,750,50,80);
  //arms
  ellipse(690,490,80,50);
  ellipse(310,490,80,50);
 
  fill(153,153,154);
  ellipse(500,300,315,300); //head
  ellipse(500,550,350,400); //body
 
  //tears
  stroke(164,220,233);
  strokeWeight(4);
  line(420,300,420,300+y);
  line(580,300,580,300+y);
 
  //eyebrows
  noStroke();
  fill(255,255,255);
  rect(400,250,35,20);
  rect(565,250,35,20);
  //eyes - original eye color: 179, 223, 216
  fill(179, 223, 216);
  ellipse(420,300,20,20);
  ellipse(580,300,20,20);
  //nose
  fill(245,185,168);
  triangle(500,330,490,310,510,310);
  //mouth
  stroke(1);
  strokeWeight(1);
  line(500,330,500,350);
  //curve(490,340,495,345,515,345,510,340);
  
  //fish
  noStroke();
  fill(244, 146, 39);
  
  if (y<=340){
  ellipse(730,490+y,30,50);
  triangle(730,500+y,715,525+y,745,525+y);
  fill(0,0,0);
  ellipse(730,480+y,4,4);}
  else{
  ellipse(730,830,50,30);
  triangle(740,830,765,815,765,845);
  fill(0);
  stroke(0);
  line(715,825,725,835);
  line(725,825,715,835);
  }
  
  }
