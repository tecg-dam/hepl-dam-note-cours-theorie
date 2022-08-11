int calculate() {
  return 6 * 7;
}

int factorial(int fac) {
  if (fac < 2) {
    return 1;
  }
  return fac * factorial(fac - 1);
}
