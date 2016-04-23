
public class SalesMan {
  
  //int[] graphLoc;
  //int[] graphDivision;
  
  float distance;
  
  ArrayList<City> cities;
  
  //ArrayList<City> citiesTrip;
  
  public SalesMan(ArrayList<City> c) {
    //graphDivision = gDiv;
    //graphLoc = new int[2];
    //graphLoc[0] = gIndex % gDiv[0];
    //graphLoc[1] = gIndex / gDiv[0];
    
    distance = 0.0;
    
    cities = c;
    
  }
  
  /*void updateFields(int gIndex) {
    graphLoc[0] = gIndex % graphDivision[0];
    graphLoc[1] = gIndex / graphDivision[0];
  }*/
  
  void getDistance() {
    for(int i = 1; i < cities.size(); i++) {
      City cityA = cities.get(i-1);
      City cityB = cities.get(i);
      
      float x = abs(cityA.location.x - cityB.location.x);
      float y = abs(cityA.location.y - cityB.location.y);
      
      distance = distance + sqrt(sq(x) + sq(y));
    }
    
    City cityA = cities.get(0);
    City cityB = cities.get(cities.size() - 1);
    
    float x = abs(cityA.location.x - cityB.location.x);
    float y = abs(cityA.location.y - cityB.location.y);
      
    distance = distance + sqrt(sq(x) + sq(y));
  }
  
  void getRandomTrip() {
    ArrayList<City> citiesTrip = new ArrayList<City>();
    for(int i = 0; i < cities.size(); i++) {
      City city = cities.get(i);
      
      if(i <= 1) {
        citiesTrip.add(city);
      }
      else {
        int index = (int)random(1, citiesTrip.size());
        citiesTrip.add(index, city);
      }
    }
    
    cities = citiesTrip;
    
    getDistance();
  }
  
  /*void display() {
    
    float graphWidth = width/(float)graphDivision[0];
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
    
    / **for(int i = 0; i < citiesTrip.size(); i++) {
      City city = citiesTrip.get(i);
      
      fill(0);
      if(i == 0) {
        fill(0, 255, 0);
      }
      if(i == citiesTrip.size() - 1) {
        fill(255, 0, 0);
      }
      
      float x = xOrigin + map(city.location.x, 0, 100, 0, graphWidth);
      float y = yOrigin + map(city.location.y, 0, 100, 0, graphHeight);
      
      ellipse(x, y, 10, 10);
      
      if(i > 0) {
        City c = citiesTrip.get(i - 1);
        float cx = xOrigin + map(c.location.x, 0, 100, 0, graphWidth);
        float cy = yOrigin + map(c.location.y, 0, 100, 0, graphHeight);
        line(cx, cy, x, y);
      }
    }** /
  }*/
  
  /*void display() {
    
    
    float graphWidth = width/(float)graphDivision[0];
    float graphHeight = height/(float)graphDivision[1];
    
    float xOrigin = (float)graphLoc[0] * graphWidth;
    float yOrigin = (float)graphLoc[1] * graphHeight;
    
    
    //println(xOrigin, yOrigin);
    
    //pushMatrix();
    //translate(xOrigin, yOrigin);
    
    for(int i = 0; i < citiesTrip.size(); i++) {
      City city = citiesTrip.get(i);
      
      fill(0);
      if(i == 0) {
        fill(0, 255, 0);
      }
      if(i == citiesTrip.size() - 1) {
        fill(255, 0, 0);
      }
      
      float x = xOrigin + map(city.location.x, 0, 100, 0, graphWidth);
      float y = yOrigin + map(city.location.y, 0, 100, 0, graphHeight);
      
      ellipse(x, y, 10, 10);
      
      if(i > 0) {
        City c = citiesTrip.get(i - 1);
        float cx = xOrigin + map(c.location.x, 0, 100, 0, graphWidth);
        float cy = yOrigin + map(c.location.y, 0, 100, 0, graphHeight);
        line(cx, cy, x, y);
      }
    }
    
    //popMatrix();
  }*/
  
  
}