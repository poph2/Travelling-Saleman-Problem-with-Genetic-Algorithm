
ArrayList<City> cities;


SalesMan salesMan1, salesMan2, salesMan3;

int salesMenCount = 57;

int[] graphDivision = {8, 8};

int cityCount = 5;//graphDivision[0] * graphDivision[1];

ArrayList<SalesMan> salesMen;
  
void setup() {
  size(640, 360);
  surface.setResizable(true);
  
  cities = new ArrayList<City>();
  salesMen = new ArrayList<SalesMan>();
  
  for(int i = 0; i < cityCount; i++) {
    cities.add(getRandomCity(100, 100));
  }
  
  for(int i = 0; i < salesMenCount; i++) {
    //for(int j = 0; j < graphDivision[1]; j++) {
      //int[] graphLoc = {i, j};
      //int graphIndex
      SalesMan salesM = new SalesMan(cities, i, graphDivision);
      salesM.getRandomTrip();
      salesMen.add(salesM);
    //}
  }
  
  //int[] graphLoc1 = {0, 0};
  //salesMan1 = new SalesMan(cities, graphLoc1, graphDivision);
  
  //int[] graphLoc2 = {1, 2};
  //salesMan2 = new SalesMan(cities, graphLoc2, graphDivision);
  
  //int[] graphLoc3 = {2, 3};
  //salesMan3 = new SalesMan(cities, graphLoc3, graphDivision);
  
}

void draw() {
  background(255);
  
  fill(0);
  
  for(int i = 1; i < graphDivision[0]; i++) {
    float x = (float)i * (width/(float)graphDivision[0]);
    line(x, 0, x, height);
  }
  
  
  for(int i = 0; i < graphDivision[1]; i++) {
    float y = (float)i * (height/(float)graphDivision[1]);
    line(0, y, width, y);
  }
  
  
  //salesMan1.display();
  //salesMan2.display();
  //salesMan3.display();
  for(int i = 0; i < salesMen.size(); i++) {
    salesMen.get(i).display();
  }
  
}

City getRandomCity(float maxX, float maxY) {
  float x = random(10, maxX);
  float y = random(10, maxY);
  
  City city = new City(new PVector(x, y));
  
  return city;
}

void sort() {
  
}