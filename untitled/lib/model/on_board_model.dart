import '../constant/text/project_text.dart';

class OnBoardModel {
  String title;
  String subtitle;
  String image;

  OnBoardModel(
      {required this.title, required this.image, required this.subtitle});

  String get imageWithPath => "assets/images/$image.jpg";
}

class OnBoardModels {
  static final List<OnBoardModel> items = [
    OnBoardModel(
        title: ProjectText.title,
        image: ProjectText.path,
        subtitle: ProjectText.subTitle),
    OnBoardModel(
        title: ProjectText.title,
        image: ProjectText.path2,
        subtitle: ProjectText.subTitle),
  ];
}
