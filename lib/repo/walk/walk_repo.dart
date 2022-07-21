import 'package:smartflore/models/trails/trails_model.dart';

class WalkRepo {
  WalkRepo();

  int currentOccurenceID = 0;
  Trail? trail;

  startWalk(Trail trail) {
    currentOccurenceID = 0;
    trail = trail;
  }

  setCurrentOccurence(int occurenceID) {
    currentOccurenceID = occurenceID;
  }

  int getCurrentOccurenceId() {
    return currentOccurenceID;
  }

  int getPrevOccurenceId() {
    return currentOccurenceID - 1;
  }

  int getNextOccurenceId() {
    return currentOccurenceID + 1;
  }
}
