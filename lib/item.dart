class Item {
  String nom = '';
  String description = '';
  String reference = '';
  String commandePlat = '';
  
  String imageLink = '';
  String twoDLink = '';
  String threeDLink = '';

  String indiceDeConsomation = '';
  int stockReserve = 0;
  int stockLimite = 0;
  int quantiteRemonter = 0;
  bool stockBas = false;
  bool nextRemonter = false;

  @override
  String toString() {
    return "hey";
  }
}
