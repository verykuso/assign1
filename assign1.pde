/* please implement your assign1 code in this file. */

PImage shipImg;
PImage backgroundImg1,backgroundImg2;
PImage barImg,allienImg,bonusImg;
int a,i,j,k,x,y,z;

void setup(){
  size(640,480);
  backgroundImg1 = loadImage("img\\bg1.png");
  backgroundImg2 = loadImage("img\\bg2.png");
  shipImg = loadImage("img\\fighter.png");
  barImg = loadImage("img\\hp.png");
  allienImg = loadImage("img\\enemy.png");
  bonusImg = loadImage("img\\treasure.png");
  a = floor(random(21,170)); // a is for the HP bar
  x = floor(random(50,400)); //x is for the treasure
  y = floor(random(100,350));//y is for the treasure
  z = floor(random(40,400));//z is for the enemy
  i = 10;//i is for the enemy and speed changing
  j = 0;//j is for the background 2
  k = -640;//k is for the background 1 which starts at the x=-640
}

void draw(){
  background(0);
  image(backgroundImg2,j++,0);//background image moves forward by 1 pixel
  if(j==641) j = -640; // if j reaches 641 then it becomes to -640
  image(backgroundImg1,k++,0);
  if(k==641) k = -640; //as above
  
  
  fill(#ff0000);
  rect(24,24,a,22);//random the x-axis to show HP bar randomly
  image(barImg,20,20);
  image(shipImg,580,250);//fix the ship's position
  image(bonusImg,x,y);//showing treasure randomly
  image(allienImg,i,z);//showing the enemy randomly and moving forward with 2 pixels
  i = i+2;
  if(i>=640) {i = 0;z = floor(random(40,400));}//if enemy reaches the edge then it will disappears and showing randomly at the left side again.
}
