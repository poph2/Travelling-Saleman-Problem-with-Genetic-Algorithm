
ArrayList<City> cities;

//

int[] graphDivision = {10, 10};

int cityCount = 15;
int salesMenCount = 90;

int generationIndex = 0;
float min = 0.0;
float max = 0.0;

Generation generation;
  
void setup() {
  size(640, 360);
  surface.setResizable(true);
  
  generation = new Generation(0);
  generation.getRandomGeneration(salesMenCount, cityCount);
  
}

void draw() {
  background(255);
  
  Display d = new Display(generation, graphDivision);
  d.draw();
}



void getStatistics() {
  //ci
}