class Eggs{
  
  float[] x;
  float[] y;
  float a;
  float r;
  int total = 1;
  float radius;
  
  Eggs(){
    
  }
  
  void display(float tempR, float tempA){
    stroke(255);
    //fill(255);
    
    float[] xValues = new float[total];
    for (int i = 0; i < total; i++){
      xValues[i] = tempR * cos(i);
    
    }
    
    float[] yValues = new float[total];
    for (int i = 0; i < total; i++){
      yValues[i] = tempR * sin(i);
    
    }
    
    x = xValues;
    y = yValues;
    
    for (int i = 0; i < total; i++){
      rotate(PI/tempA);
       ellipse(x[i], y[i], 40, 30);
      
      
    }
  }
}
