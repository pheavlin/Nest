class Light{
  
  float x;
  float y;
  float[] a = new float[360];

  Light(){
  
    x = mouseX;
    y = mouseY;
  }
  
  void show(){
  stroke(255);
  fill(255);
  ellipse(0, 0, 10, 10);
  line(0, 0, 50, 50);
  
  }

}
