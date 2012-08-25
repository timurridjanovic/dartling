
abstract class Neighbor extends Property {

  bool internal = true;
  bool inheritance = false;
  Neighbor opposite;

  // the source concept is inherited from Property
  Concept destinationConcept;

  Neighbor(Concept sourceConcept, this.destinationConcept, String neighborCode) :
    super(sourceConcept, neighborCode) {
  }

  bool get external() => !internal;

}