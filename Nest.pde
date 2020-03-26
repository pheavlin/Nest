Eggs[] eggs = new Eggs[100];

Light[] light = new Light[1];

float aVel = 0.1;

float rot;

float[] ring = new float[]{19, 27, 36, 43, 51, 59, 66, 72, 80, 90};

float[] eggAngle = new float[]{
  degrees(PI/19), degrees(PI/13.4), degrees(PI/10), degrees(PI/8.38), degrees(PI/7.05), 
  degrees(PI/6.1), degrees(PI/5.45), degrees(PI/5), degrees(PI/4.5), degrees(PI/4)
};

void settings(){
  
  size(1400, 1400);
  rot = 0;
  
  for (int i = 0; i < eggs.length; i++){
    eggs[i] = new Eggs();  
  }
  for (int i = 0; i < light.length; i++){
    light[i] = new Light();
  }
}

void draw(){ 
  background(0);
  
  push();
  translate(width/2, height/2);
  rotate(radians(rot));
  for (int i = 0; i < ring.length; i++){
    for (int j = 0; j < ring[i]; j++){
      eggs[j].display((100 + (40 * i)), eggAngle[i]);
    }
  }
  pop();
  rot += aVel;

  translate(width/2, height/2);
  for (int i = 0; i < 1; i++){
    light[i].show();
  }
  
}
