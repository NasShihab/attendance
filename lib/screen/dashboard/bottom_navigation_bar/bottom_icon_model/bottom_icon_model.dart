class BottomIconModel {
  String lottieAsset;
  String title;
  void Function() onTap;

  BottomIconModel({
    required this.lottieAsset,
    required this.title,
    required this.onTap
  });
}
