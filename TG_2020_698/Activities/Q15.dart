
void main() {
  double distance = 25.0; // Distance in km
  double speed = 40.0; // Speed in km/h

  // Calculate time in hours
  double timeInHours = distance / speed;

  // Convert time to minutes
  double timeInMinutes = timeInHours * 60;

  print("Time taken to reach office: ${timeInMinutes.toStringAsFixed(2)} minutes");
}
