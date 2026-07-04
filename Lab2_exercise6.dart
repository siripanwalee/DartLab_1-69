void executeOperation(int a, int b, int Function(int, int) operation) {
  var result = operation(a, b);
  print('Result: $result');
  
}

int subtract(int x, int y) {
  return x - y;
}

int add(int x, int y) {
  return x + y;
}

int cylinderVolume(int radius, int height) {
  return (3.14 * radius * radius * height).toInt();
}

int rectangVolume(int length, int width, int height) {
  return length * width * height;
}

int wallpVolume(int length,int length2,int height) {
  return ((1 / 2) * length * length2 * height).toInt();
}

void main() {
  print('Result: ${subtract(10, 5)}');
  print('Result: ${add(10, 5)}');
  // Anonymous function
  executeOperation(10, 5, (x, y) => x * y); // Result: 50
  print('Result cylinder: ${cylinderVolume(3, 5)}');
  print('Result rect: ${rectangVolume(2, 3, 4)}');
  print('Result wallp: ${wallpVolume(2, 3, 4)}');
}