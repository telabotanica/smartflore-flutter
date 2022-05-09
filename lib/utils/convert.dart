class Numbers {
  static mToKM(double meters) {
    if (meters > 999) {
      if (meters > 9999) {
        return '${(meters / 1000).toStringAsFixed(0)} km';
      }
      return '${(meters / 1000).toStringAsFixed(2)} km';
    }

    return '${meters.toStringAsFixed(0)} m';
  }
}
