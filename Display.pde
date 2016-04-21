public class Display {
  
  ArrayList<SalesMan> salesMen;
  int[] graphDivision;
  
  public Display(ArrayList<SalesMan> sMen, int[] gDiv) {
    salesMen = sMen;
    graphDivision = gDiv;
  }
 
  void draw(SalesMan s) {
    
    /*float graphWidth = width/(float)graphDivision[0];
    float graphHeight = height/(float)graphDivision[1];
    
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