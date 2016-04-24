
ArrayList<City> cities;

int salesMenCount = 90;

int[] graphDivision = {10, 10};

int cityCount = 15;//graphDivision[0] * graphDivision[1];

int generation = 0;
float min = 0.0;
float max = 0.0;

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
      SalesMan salesM = new SalesMan(cities);
      salesM.getRandomTrip();
      salesMen.add(salesM);
  }
  
  sort();
}

void draw() {
  background(255);
  
  Display d = new Display(salesMen, graphDivision, generation, min, max);
  d.draw();
}

City getRandomCity(float maxX, float maxY) {
  float x = random(10, maxX);
  float y = random(10, maxY);
  
  City city = new City(new PVector(x, y));
  
  return city;
}

void getStatistics() {
  //ci
}

void sort() {
  
  for(int i = 0; i < salesMen.size(); i++) {
    for(int j = 1; j < salesMen.size(); j++) {
      if(salesMen.get(j-1).distance > salesMen.get(j).distance) {
        SalesMan sTemp = salesMen.get(j-1);
        salesMen.set(j-1, salesMen.get(j));
        salesMen.set(j, sTemp);
      }
    }
  }
  
  getStatistics();
}