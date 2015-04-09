int[][] markov = {{60, 25, 15}, //state 0 (total 100%)
                  {25, 50, 25}, //state 1 (total 100%)
                  {35, 25, 40}  //state 2 (total 100%)
                  };

int state = 0;                             //markov state

void setup() {
  size(400, 400);
  background(230);
  noStroke();
  smooth();
  fill(0);
}

void draw() {
  line(200, 100, 100, 300);
  ellipse(200, 100, 40, 40);
  ellipse(100, 300, 40, 40);
  ellipse(300, 300, 40, 40);
}

void mousePressed() { changeMarkovState(); }

void changeMarkovState() {
float rnd = random(100.0);                   // rnd 100 for a 100% range
float range = 0;                             //
color c = color(0, 0, 0);
String statename ="HOME";

for(int i = 0; i < markov[0].length; i++) {  // starts with first cell
range += float(markov[state][i]);            // adds up range to new value according tothe current state
if(rnd <= range) {                           // if rnd is smaller than range,
state = i;                                   //set the new state from i value

  if (state == 0) {
    statename = "HOME";
    fill(255, 0, 0);}
  if (state == 1) {
    statename = "WORK";
    fill(255, 204, 0);}
  if (state == 2) {
    statename = "SHOP";
  fill(0, 10, 45);} 

  break;
    }
  }
println(rnd);
println("Current state: " + state);
println("Current state: " + statename);
println(range);
}
