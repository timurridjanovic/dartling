
// data/game/parking/parkings.dart

class Parking extends ParkingGen {

  Parking(Concept concept) : super(concept);

  Parking.withId(Concept concept, Area area, int number) :
    super.withId(concept, area, number);

}

class Parkings extends ParkingsGen {

  Parkings(Concept concept) : super(concept);

  Parking getParkingWithinArea(int parkingNumber) {
    for (Parking parking in this) {
      if (parking.number == parkingNumber) {
        return parking;
      }
    }
  }

  Parking getParking(String areaName, int parkingNumber) {
    for (Parking parking in this) {
      if (parking.area.name == areaName && parking.number == parkingNumber) {
        return parking;
      }
    }
  }

}

