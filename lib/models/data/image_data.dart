import 'package:app_global_solution/models/enums/EnumCulture.dart';
import 'package:app_global_solution/models/enums/EnumPlagues.dart';
import 'package:app_global_solution/models/image_model.dart';

class ImageData {
  static final imageModelList = [
    ImageModel(
      imageUrl: 'assets/imgs/drone_image.jpg',
      latitude: '19º55’15’’ S',
      longitude: ' 43º56’16’’ W',
      culture: EnumCulture.Milho.name,
      plagues: EnumPlagues.Lagarta.name,
      nutrientDeficiency: true,
    ),
    ImageModel(
      imageUrl: 'assets/imgs/drone_image.jpg',
      latitude: '20º55’15’’ S',
      longitude: ' 43º56’16’’ W',
      culture: EnumCulture.Soja.name,
      plagues: EnumPlagues.Pardais.name,
      nutrientDeficiency: true,
    ),
    ImageModel(
      imageUrl: 'assets/imgs/drone_image.jpg',
      latitude: '21º55’15’’ S',
      longitude: ' 43º56’16’’ W',
      culture: EnumCulture.Trigo.name,
      plagues: EnumPlagues.Lagarta.name,
      nutrientDeficiency: true,
    ),
    ImageModel(
      imageUrl: 'assets/imgs/drone_image.jpg',
      latitude: '22º55’15’’ S',
      longitude: ' 43º56’16’’ W',
      culture: EnumCulture.Soja.name,
      plagues: EnumPlagues.Ratos.name,
      nutrientDeficiency: true,
    ),
    ImageModel(
      imageUrl: 'assets/imgs/drone_image.jpg',
      latitude: '23º55’15’’ S',
      longitude: ' 43º56’16’ W',
      culture: EnumCulture.Milho.name,
      plagues: EnumPlagues.Pardais.name,
      nutrientDeficiency: true,
    ),
    ImageModel(
      imageUrl: 'assets/imgs/drone_image.jpg',
      latitude: '24º55’15’ S',
      longitude: ' 43º56’16’’ W',
      culture: EnumCulture.Soja.name,
      plagues: EnumPlagues.Ratos.name,
      nutrientDeficiency: true,
    ),
    ImageModel(
      imageUrl: 'assets/imgs/drone_image.jpg',
      latitude: '25º55’15’’ S',
      longitude: ' 43º56’16’’ W',
      culture: EnumCulture.Trigo.name,
      plagues: EnumPlagues.Pardais.name,
      nutrientDeficiency: true,
    ),
    ImageModel(
      imageUrl: 'assets/imgs/drone_image.jpg',
      latitude: '26º55’15’’ S',
      longitude: ' 43º56’16’’ W',
      culture: EnumCulture.Milho.name,
      plagues: EnumPlagues.Lagarta.name,
      nutrientDeficiency: true,
    ),
  ];
}
