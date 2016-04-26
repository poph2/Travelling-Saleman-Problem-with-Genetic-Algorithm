public class Display {
  
  float border = 15.0;
  
  ArrayList<SalesMan> salesMen;
  int[] graphDivision;
  int generationIndex;
  float min;
  float max;
  
  public Display(Generation gen, int[] gDiv) {
    salesMen = gen.salesMen;
    graphDivision = gDiv;
    
    generationIndex = gen.generationIndex;
    min = gen.min;
    max = gen.max;
  }
 
  void draw() {
    
    drawLines();
    
    float graphWidth = (width - (border * 2))/(float)graphDivision[0];
    float graphHeight = (height - (border * 2))/(float)graphDivision[1];
    
    int count = 0;
    
    text("Generation " + generationIndex, border, 10); 
    text("Minimum " + min, border + 150, 10); 
    text("Maximum " + max, border + 300, 10); 
    
    for(int i = 0; i < graphDivision[0]; i++) {
      for(int j = 0; j < graphDivision[1]; j++) {
        
        if(count >= salesMen.size()) break;
        
        SalesMan salesMan = salesMen.get(count);
        count++;
        
        float xOrigin = border + ((float)j * graphWidth);
        float yOrigin = border + ((float)i * graphHeight);
        
        //ellipse(xOrigin, yOrigin, 10, 10);
        
        fill(0, 0, 0);
        stroke(0, 0, 0);
        text("Distance = " + salesMan.distance, xOrigin + 10, yOrigin + 15); 
        
        ArrayList<City> cities = salesMan.cities;
        
        for(int k = 0; k < cities.size(); k++) {
          City city = cities.get(k);
          float x = xOrigin + map(city.location.x, 0, 100, 0, graphWidth - 10);
          float y = yOrigin + map(city.location.y, 0, 100, 10, graphHeight - 10);
          
          
          
          fill(0);
          if(k == 0) {
            fill(0, 255, 0);
          }
          if(k == cities.size() - 1) {
            fill(255, 0, 0);
          }
          //text("Cities " + k + " - "+ city.location.x + ", " + city.location.y, xOrigin + 10, yOrigin + 45 + (k*10)); 
          ellipse(x, y, 10, 10);
          
          if(k > 0) {
            City c = cities.get(k - 1);
            float cx = xOrigin + map(c.location.x, 0, 100, 0, graphWidth - 10);
            float cy = yOrigin + map(c.location.y, 0, 100, 10, graphHeight - 10);
            line(cx, cy, x, y);
          }
        }
        
      }
    }
  }
  
  void drawLines() {
    
    fill(0);
    
    for(int i = 0; i <= graphDivision[0]; i++) {
      float x = border + ((float)i * ((width - (border * 2))/(float)graphDivision[0]));
      line(x, border, x, height-border); //<>//
    }
    
    
    for(int i = 0; i <= graphDivision[1]; i++) {
      float y = border + ((float)i * ((height - (border * 2))/(float)graphDivision[1]));
      line(border, y, width-border, y);
    }
  }
  
}