class Item {
  var nom = '';
  var description = '';
  var reference = '';
  var commandePlat = '';
  
  var imageLink = '';
  var twoDLink = '';
  var threeDLink = '';

  var indiceDeConsomation = '';
  var stockReserve = 0;
  var stockLimite = 0;
  var quantiteRemonter = 0;
  var stockBas = false;
  var nextRemonter = false;

  @override
  String toString() {
    return "hey";
  }
}
