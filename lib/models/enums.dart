enum MapAssets { seas, rivers, coastalLine, lakes, borders, names }

enum MapRegion {
  none([]),
  north(['01', '02', '03', '04']),
  southEast(['05', '06', '07']),
  southWest(['08', '09', '10']);

  final List<String> provinces;

  const MapRegion(this.provinces);
}
