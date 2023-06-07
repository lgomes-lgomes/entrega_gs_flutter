class ImageModel {
  String imageUrl;
  late String imageId;
  String culture;
  String plagues;
  bool nutrientDeficiency;

  ImageModel({
    required this.imageUrl,
    required this.culture,
    required this.plagues,
    required this.nutrientDeficiency,
    required String latitude,
    required String longitude,
  }) {
    // Formata a latitude para limpar os caracteres especiais.
    String formatedLatitude =
        latitude.replaceAll('’', '').replaceAll('’’', '').replaceAll('º', '');

    // Formata a latitude para retirar a letra do final.
    formatedLatitude = formatedLatitude
        .replaceRange(
          formatedLatitude.length - 1,
          formatedLatitude.length,
          '',
        )
        .trim();

    // Formata a longitude para limpar os caracteres especiais.
    String formatedLongitude =
        latitude.replaceAll('’', '').replaceAll('’’', '').replaceAll('º', '');

    // Formata a longitude para retirar a letra do final.
    formatedLongitude = formatedLongitude
        .replaceRange(
          formatedLongitude.length - 1,
          formatedLongitude.length,
          '',
        )
        .trim();

    imageId = 'ID$formatedLatitude$formatedLongitude';
  }
}
