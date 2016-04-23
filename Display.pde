public class Display {
  
  ArrayList<SalesMan> salesMen;
  int[] graphDivision;
  
  public Display(ArrayList<SalesMan> sMen, int[] gDiv) {
    salesMen = sMen;
    graphDivision = gDiv;
  }
 
  void draw() {
    
    float graphWidth = width/(float)graphDivision[0];
    float graphHeight = height/(float)graphDivision[1];
    
    int count = 0;
    
    for(int i = 0; i < graphDivision[0]; i++) {
      for(int j = 0; j < graphDivision[1]; j++) {
        
        if(count >= salesMen.size()) break;
        
        SalesMan salesMan = salesMen.get(count);
        count++;
        
        float xOrigin = (float)j * graphWidth;
        float yOrigin = (float)i * graphHeight;
        
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
          text("Cities " + k + " - "+ city.location.x + ", " + city.location.y, xOrigin + 10, yOrigin + 45 + (k*10)); 
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
    
    /*
    
    float xOrigin = (float)graphLoc[0] * graphWidth;
    float yOrigin = (float)graphLoc[1] * graphHeight;
    
    //ellipse(xOrigin, yOrigin, 10, 10);
    
    fill(0, 0, 0);
    stroke(0, 0, 0);
    text("Distance = " + distance, xOrigin + 10, yOrigin + 15); 
    
    for(int i = 0; i < cities.size(); i++) {
      City city = cities.get(i);
      float x = xOrigin + map(city.location.x, 0, 100, 0, graphWidth - 10);
      float y = yOrigin + map(city.location.y, 0, 100, 10, graphHeight - 10);
      
      fill(0);
      if(i == 0) {
        fill(0, 255, 0);
      }
      if(i == cities.size() - 1) {
        fill(255, 0, 0);
      }
      ellipse(x, y, 10, 10);
      
      if(i > 0) {
        City c = cities.get(i - 1);
        float cx = xOrigin + map(c.location.x, 0, 100, 0, graphWidth - 10);
        float cy = yOrigin + map(c.location.y, 0, 100, 10, graphHeight - 10);
        line(cx, cy, x, y);
      }
    }
    
    */
  }
  
}