void setup () {
  plusgrandcarreinferieur (30);
  plusgrandcarreinferieur (63);
}
void plusgrandcarreinferieur (int n) {
  int i=1;
  while (i*i<n) {
    i++;
  }
  i--;
  println(" Le plus grand carré inférieur de "+n+" est : " +i*i);
}
